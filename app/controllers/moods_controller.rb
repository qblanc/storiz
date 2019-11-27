class MoodsController < ApplicationController
  before_action :find_project, only: [:new, :create]
  before_action :set_mood, only: [:show, :edit, :update, :destroy]

  def show
    @mood = Mood.find(params[:id])
  end

  def new
    @mood = Mood.new
  end

  def create
    @mood = Mood.new(mood_params)
    @mood.project = @project
    if @project.valid?
      @mood.save!
      redirect_to mood_path(@mood)
    else
      redirect_to :new
    end
  end

  def edit
    @mood = Mood.find(params[:id])
  end

  def update
    @mood.update(mood_params)
    respond_to do |format|
      format.html do
        redirect_to mood_path(@mood)
      end
      format.js
    end
  end

  private

  def find_project
    @project = Project.find(params[:project_id])
  end

  def set_mood
    @mood = Mood.find(params[:id])
  end

  def mood_params
    params.require(:mood).permit()
  end
end
