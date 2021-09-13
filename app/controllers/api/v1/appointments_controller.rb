class Api::V1::AppointmentsController < Api::BaseController

  before_action :find_appointment, only: %w[show]

  def create
    @appointment = Appointment.new(appointment_params)
    @appointment.nutritionist = current_user

    if @appointment.save 
      render json: @appointment, status: :created
    else 
      render json: @appointment.errors, status: :errors
    end

  end

  def show
    render_jsonapi_response(@appointment)
  end

  def index
    render json: Appointment.all
  end

  def update
    @appointment = Appointment.update
    render json: Appointment.new
  end

  def destroy
    @appointment = Appointment.destroy
  end


    private

  def find_appointment
  @appointment = Appointment.find(params[:id])
  end

  def appointment_params
    params.require(:appointment).permit(:date, :weight, :height, :body_fat, :muscle_mass, :visceral_fat, :content, :patient_id, :nutritionist_id)
  end

end
