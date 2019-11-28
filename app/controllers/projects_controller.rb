class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :destroy]

  def show
    @scenes = @project.scenes.all
    @scene = Scene.new
  end

  def index
    @projects = Project.all
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(user: current_user, category: project_params[:category], title: project_params[:title].capitalize)
    if @project.valid?
      @project.save!
      redirect_to project_pitch_edit_path(@project)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @project.update(project_params)
    redirect_to project_path(@project)
  end

  def destroy
    @project.destroy
    redirect_to root_path
  end

  def pitch
    @project = Project.find(params[:project_id])
  end

  def edit_pitch
    @project = Project.find(params[:project_id])
  end

  private

  def set_project
    @project = Project.find(params[:id])
  end

  def project_params
    params.require(:project).permit(:title, :pitch, :category, :synopsis)
  end
end
