class ScenesController < ApplicationController
  before_action :find_project, only: [:new, :create]
  before_action :find_scene, only: [:show, :edit, :update, :destroy]

  def show
    @project = @scene.project
    @scenes = @project.scenes.order(:number)
    @characters = Character.all


  end

  def new
    @scene = Scene.new
  end

  def create
    @scenes = @project.scenes.order(:number)
    @scene = Scene.new(title: params[:scene][:title], content: "<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>", number: @scenes.length + 1)
    @scene.project = @project
    if @project.valid?
      @scene.save!
      redirect_to scene_path(@scene)
    else
      redirect_to :new
    end
  end

  def edit
    @project = @scene.project
    @scenes = @project.scenes.order(:number)
  end

  def update
    @scene.update(scene_params)
    respond_to do |format|
      format.html do
        redirect_to scene_path(@scene)
      end
      format.js
    end
  end

  def destroy
    num = @scene.number
    @project = @scene.project
    @scene.destroy
    @scenes = @project.scenes.order(:number)
    x = 1
    @scenes.each do |scene|
      scene.number = x
      scene.save!
      if num == @scenes.length + 1
        @id = @scenes[num - 2].id
      else
        @id = scene.id
      end
      x += 1
    end
    redirect_to scene_path(@id)
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
