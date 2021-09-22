class Api::V1::NutritionistsController < Api::BaseController

  before_action :find_nutritionist, only: %w[show update is_admin destroy]
  before_action :is_admin, only: %i[update destroy]

  def show
    render json: @nutritionist, include: :patients
  end

  def index
    render json: Nutritionist.all, include: :patients
  end

  def update
    if @nutritionist.update(nutritionist_params)
      render json: @nutritionist
    else
      render json: {errors: [{"detail":"failed"}]}
    end
  end

  def destroy
    @nutritionist.destroy
    render json: [detail:"ok"]
  end

  private

  def find_nutritionist
    @nutritionist = Nutritionist.find(params[:id])
  end

  def nutritionist_params
    params.require(:nutritionist).permit(:first_name, :last_name, :avatar, :phone_number,:slug_calendly, :api_key, :email, :password, :password_confirmation)
  end

  def is_admin
    if current_nutritionist != @nutritionist
      render json: {error:"Non autorisé"}
    end
  end

end