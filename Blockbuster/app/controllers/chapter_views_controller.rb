class ChapterViewsController < ApplicationController
  before_action :set_chapter_view, only: [:show, :edit, :update, :destroy]

  # GET /chapter_views
  # GET /chapter_views.json
  def index
    @chapter_views = ChapterView.all
  end

  # GET /chapter_views/1
  # GET /chapter_views/1.json
  def show
  end

  # GET /chapter_views/new
  def new
    @chapter_view = ChapterView.new
  end

  # GET /chapter_views/1/edit
  def edit
  end

  # POST /chapter_views
  # POST /chapter_views.json
  def create
    @chapter_view = ChapterView.new(chapter_view_params)

    respond_to do |format|
      if @chapter_view.save
        format.html { redirect_to :controller => 'seasons', :action => 'show', :id => Season.find(Chapter.find(@chapter_view.chapter_id).season_id)}
        format.json { render :show, status: :created, location: @chapter_view }
      else
        format.html { render :new }
        format.json { render json: @chapter_view.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chapter_views/1
  # PATCH/PUT /chapter_views/1.json
  def update
    respond_to do |format|
      if @chapter_view.update(chapter_view_params)
        format.html { redirect_to @chapter_view, notice: 'Chapter view was successfully updated.' }
        format.json { render :show, status: :ok, location: @chapter_view }
      else
        format.html { render :edit }
        format.json { render json: @chapter_view.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chapter_views/1
  # DELETE /chapter_views/1.json
  def destroy
    @chapter_view.destroy
    respond_to do |format|
      format.html { redirect_to :controller => 'seasons', :action => 'show', :id => Season.find(Chapter.find(@chapter_view.chapter_id).season_id)}
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chapter_view
      @chapter_view = ChapterView.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def chapter_view_params
      params.require(:chapter_view).permit(:user_id, :chapter_id, :review)
    end
end
