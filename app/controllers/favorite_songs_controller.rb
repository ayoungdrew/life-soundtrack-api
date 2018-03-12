class FavoriteSongsController < ProtectedController
  before_action :set_favorite_song, only: [:show, :update, :destroy]

  # GET /favorite_songs
  def index
    @favorite_songs = FavoriteSong.all

    render json: @favorite_songs
  end

  # GET /favorite_songs/1
  def show
    render json: @favorite_song
  end

  # POST /favorite_songs
  def create
    @favorite_song = FavoriteSong.new(favorite_song_params)
    if @favorite_song.save
      render json: @favorite_song, status: :created, location: @favorite_song
    else
      render json: @favorite_song.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /favorite_songs/1
  def update
    if @favorite_song.update(favorite_song_params)
      render json: @favorite_song
    else
      render json: @favorite_song.errors, status: :unprocessable_entity
    end
  end

  # DELETE /favorite_songs/1
  def destroy
    @favorite_song.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_favorite_song
      @favorite_song = FavoriteSong.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def favorite_song_params
      params.require(:favorite_song).permit(:user_id, :song_id, :story, :story_date)
    end
end
