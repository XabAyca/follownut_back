class Api::V1::NutritionistsController < Api::BaseController

  before_action :find_nutritionist, only: %w[show]

  def show
    render_jsonapi_response(@nutritionist)
  end

  def index
    render json: Nutritionist.all
  end

  private

  def find_nutritionist
    @nutritionist = Nutritionist.find(params[:id])
  end

end