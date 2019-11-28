class BiblesController < ApplicationController
  def show
    @project = Project.find(params[:project_id])
    @characters = Character.where(project_id: params[:project_id])
    @scenes = Scene.where(project_id: params[:project_id])
    @character_event = CharacterEvent.new
  end
end
