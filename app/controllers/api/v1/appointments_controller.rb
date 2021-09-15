class Api::V1::AppointmentsController < Api::BaseController

  before_action :find_appointment, only: %w[show update destroy is_creator]
  before_action :authenticate_nutritionist!, only: %i[create update destroy]
  before_action :is_creator, only: %i[update destroy]

  def create
    @appointment = Appointment.new(appointment_params())
    @appointment.nutritionist = current_nutritionist
    @appointment.BMI = @appointment.weight.to_f / (@appointment.height.to_f * @appointment.height.to_f)

    if @appointment.save 
      render json: @appointment, status: :created
    else 
      render json: @appointment.errors, status: :bad_request
    end

  end

  def show
    render json:@appointment
  end

  def index
    render json: Appointment.all, include: [:nutritionist, :patient]
  end

  def update
    if  @appointment.update(appointment_params())
      @appointment.BMI = @appointment.weight.to_f / (@appointment.height.to_f * @appointment.height.to_f)
      render json:@appointment, status: :ok
    else 
      render json:@appointment.errors, status: :bad_request
    end
  end

  def destroy
    @appointment.destroy
    render json: {detail:"Supprimé"}
  end

    private

  def find_appointment
  @appointment = Appointment.find(params[:id])
  end

  def appointment_params
    params.require(:appointment).permit(:date, :weight, :height, :body_fat, :muscle_mass, :visceral_fat, :content, :patient_id, :nutritionist_id, :avatar)
  end

  def is_creator
    if @appointment.nutritionist != current_nutritionist
      render json: {detail:"Non autorisé"}, status: :unauthorized
    end
  end

end