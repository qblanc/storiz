class ScenesController < ApplicationController
  before_action :find_project, only: [:new, :create]
  before_action :find_scene, only: [:show, :edit, :update, :update_rank, :destroy]

  def show
    @project = @scene.project
    @scenes = @project.scenes.order(:number)
    @characters = Character.all
    @new_scene = Scene.new
  end

  def create
    @scenes = @project.scenes.order(:number)
    @scene = Scene.new(title: params[:scene][:title], content: "<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>", number: @scenes.length + 1)
    @scene.project = @project
    if @scene.valid?
      @scene.save
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

  def update_rank
    @project = Scene.find(params[:id]).project
    @scenes = @project.scenes.order(:number)
    oldIndex = params[:truc][:oldIndex].to_i
    newIndex = params[:truc][:newIndex].to_i
    @scenes[oldIndex].update(number: newIndex + 1)
    if oldIndex > newIndex
      while oldIndex > newIndex
        @scenes[newIndex].number += 1
        @scenes[newIndex].save!
        newIndex += 1
      end
    elsif oldIndex < newIndex
      while oldIndex < newIndex
        @scenes[newIndex].number -= 1
        @scenes[newIndex].save!
        newIndex -=1
      end
    end
    @scenes = @project.scenes.order(:number)
    @scene = Scene.find(params[:id])
    respond_to do |format|
      format.html do
        redirect_to scene_path(@scene)
      end
      format.js { }
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
      if num == @scenes.length
        @id = @scenes.last.id
      else
        @id = @scenes[num - 1].id
      end
      x += 1
    end
    if @scenes.length < 1
      redirect_to project_path(@project)
    else
      redirect_to scene_path(@id)
    end
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
