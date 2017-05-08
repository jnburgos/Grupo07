class ShowsController < ApplicationController
  before_action :set_show, only: [:show, :edit, :update, :destroy]
  before_action :firewall, only: [:edit]

  # GET /shows
  # GET /shows.json
  def index
    @shows = Show.all

  end

  # GET /shows/1
  # GET /shows/1.json
  def show
    if params[:subscribe] == "1"
      add_show
    end
  end

  # GET /shows/new
  def new
    @show = Show.new
  end

  # GET /shows/1/edit
  def edit
  end

  # POST /shows
  # POST /shows.json
  def create
    if check_permission()
      @show = Show.new(show_params)

      respond_to do |format|
        if @show.save
          format.html { redirect_to @show, notice: 'Show was successfully created.' }
          format.json { render :show, status: :created, location: @show }
        else
          format.html { render :new }
          format.json { render json: @show.errors, status: :unprocessable_entity }
        end
      end
    end
  end

  # PATCH/PUT /shows/1
  # PATCH/PUT /shows/1.json
  def update
    if check_permission()
      respond_to do |format|
        if @show.update(show_params)
          format.html { redirect_to @show, notice: 'Show was successfully updated.' }
          format.json { render :show, status: :ok, location: @show }
        else
          format.html { render :edit }
          format.json { render json: @show.errors, status: :unprocessable_entity }
        end
      end
    end



  end

  # DELETE /shows/1
  # DELETE /shows/1.json
  def destroy
    if check_permission()
      @show.destroy
      respond_to do |format|
        format.html { redirect_to shows_url, notice: 'Show was successfully destroyed.' }
        format.json { head :no_content }
      end
    end
  end



  private

    def firewall
      if current_user.role != "Admin"
        redirect_to :controller => 'shows', :action => 'index'
      end
    end

    def check_permission
      if current_user.role == "Admin"
        return true
      end
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_show
      @show = Show.find(params[:id])
    end

    def add_show
      unless current_user.shows.include?(@show)
        current_user.shows << @show
        flash[:notice] = '¡Te has suscrito a ' + @show.title + '!'
        redirect_to "shows"
      end
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def show_params
      params.require(:show).permit(:title, :genre, :rating, :rating_n, :permission, :country, :language, :subtitles, :actors, :numberOfSeasons)
    end
end
