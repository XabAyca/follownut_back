class Api::V1::PatientsController < Api::BaseController

  before_action :find_patient, only: %w[show update destroy is_admin]
  before_action :is_admin, only: %i[update destroy]

  def show
    render json: @patient, include: :nutritionist
  end

  def index
    render json: Patient.all, include: :nutritionist
  end

  def update
    if @patient.update(patient_params)
      render json: @patient
    else
      render json: {errors: [{"detail":"failed"}]}
    end
  end

  def destroy
    @patient.destroy
    render json: [detail:"ok"]
  end

  private

  def find_patient
    @patient = Patient.find(params[:id])
  end

  def patient_params
    params.require(:patient).permit(:first_name, :last_name, :gender, :date_of_birth, :email, :password, :password_confirmation, :nutritionist_id)
  end

  def is_admin
    if current_patient != @patient
      render json: {error:"Non autorisé"}
    end
  end

end