class Api::V1::NutritionistsController < Api::BaseController

  before_action :find_nutritionist, only: %w[show update]

  def show
    render json: @nutritionist, include: :patients
  end

  def index
    render json: Nutritionist.all, include: :patients
  end

  private

  def find_nutritionist
    @nutritionist = Nutritionist.find(params[:id])
  end

end