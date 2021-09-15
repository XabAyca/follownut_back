class Api::V1::PatientsController < Api::BaseController

  before_action :find_patient, only: %w[show]

  def show
    render json: @patient, include: :nutritionist
  end

  def index
    render json: Patient.all
  end

  private

  def find_patient
    @patient = Patient.find(params[:id])
  end

end