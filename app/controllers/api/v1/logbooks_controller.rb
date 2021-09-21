class Api::V1::LogbooksController < Api::BaseController
  
  before_action :find_logbook, only: [:show, :update, :destroy]
  before_action :authenticate_patient!, only: %i[create update destroy]
  before_action :is_author, only: %i[update destroy]

  # GET /logbooks
  def index
    render json: Logbook.all, include: :patient
  end

  # GET /logbooks/1
  def show
    render json: @logbook, include: :patient
  end

  # POST /logbooks
  def create
    @logbook = Logbook.new(logbook_params)
    @logbook.patient = current_patient

    if @logbook.save
      render json: @logbook, status: :created
    else
      render json: @logbook.errors, status: :bad_request
    end
  end

  # PATCH/PUT /logbooks/1
  def update
    if @logbook.update(logbook_params)
      render json: @logbook, status: :ok
    else
      render json: @logbook.errors, status: :bad_request
    end
  end

  # DELETE /logbooks/1
  def destroy
    @logbook.destroy
    render json: {detail:"Supprimé"}
  end


  private
    def find_logbook
      @logbook = Logbook.find(params[:id])
    end
  
    def logbook_params
      params.require(:logbook).permit(:title, :content, :is_shared, :patient_id)
    end
  
    def is_author
      if @logbook.patient != current_patient
        render json: {error:"Non autorisé"}, status: :unauthorized
      end
    end

end
