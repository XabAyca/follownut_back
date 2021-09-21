class Api::V1::ArticlesController < Api::BaseController

  before_action :find_article, only: [:show, :update, :destroy]
  before_action :authenticate_nutritionist!, only: %i[create update destroy]
  before_action :is_author, only: %i[update destroy]

  # GET /articles
  def index
    render json: Article.all, include: :nutritionist
  end

  # GET /articles/1
  def show
    render json: @article, include: :nutritionist
  end

  # POST /articles
  def create
    @article = Article.new(article_params)
    @article.nutritionist = current_nutritionist

    if @article.save
      render json: @article, status: :created
    else
      render json: @article.errors, status: :bad_request
    end
  end

  # PATCH/PUT /articles/1
  def update
    if @article.update(article_params)
      render json: @article, status: :ok
    else
      render json: @article.errors, status: :bad_request
    end
  end

  # DELETE /articles/1
  def destroy
    @article.destroy
    render json: {detail:"Supprimé"}
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def find_article
      @article = Article.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def article_params
      params.require(:article).permit(:title, :content, :nutritionist_id)
    end
  
    def is_author
      if @article.nutritionist != current_nutritionist
        render json: {error:"Non autorisé"}, status: :unauthorized
      end
    end

end
