class PhasesController < ProtectedController
  before_action :set_phase, only: [:show, :update, :destroy]

  # GET /phases
  def index
    @phases = Phase.all

    render json: @phases
  end

  # GET /phases/1
  def show
    render json: @phase.user.favorite_songs.where(story_date: @phase.start_date..@phase.end_date)
  end

  # GET /phases
  def getmyphases
    @phases = current_user.phases.all
    render json: @phases
  end

  # POST /phases
  def create
    @phase = current_user.phases.build(phase_params)
    # @phase = Phase.new(phase_params)
    if @phase.save
      render json: @phase, status: :created
    else
      render json: @phase.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /phases/1
  def update
    if @phase.update(phase_params)
      render json: @phase
    else
      render json: @phase.errors, status: :unprocessable_entity
    end
  end

  # DELETE /phases/1
  def destroy
    @phase.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_phase
      @phase = Phase.find(params[:id])
      # @phase = current_user.phases.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def phase_params
      params.require(:phase).permit(:name, :user_id, :start_date, :end_date)
    end
end
