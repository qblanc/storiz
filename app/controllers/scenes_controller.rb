class ScenesController < ApplicationController
  before_action :find_project, only: [:new, :create]
  before_action :find_scene, only: [:show, :edit, :update, :destroy]

  def show
    @scenes = Scene.all
  end

  def new
    @scene = Scene.new
  end

  def create
    @scene = Scene.new(scene_params)
    @scene.project = @project
    if @project.valid?
      @scene.save!
      redirect_to scene_path(@scene)
    else
      redirect_to :new
    end
  end

  def edit
  end

  def update
    @scene.update(scene_params)
    redirect_to scene_path(@scene)
  end

  def destroy
    @scene.destroy
    redirect_to root_path
  end

  private

  def scene_params
    params.require(:scene).permit(:title, :number, :content)
  end

  def find_project
    @project = Project.find(params[:project_id])
  end

  def find_scene
    @scene = Scene.find(params[:id])
  end
end
