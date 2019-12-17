class CharacterEventsController < ApplicationController
  before_action :set_character, only: [:create]

  def create
    @character_event = CharacterEvent.new(character_event_params)
    @character_event.character = @character

    if @character_event.save
      respond_to do |format|
        format.html { redirect_to character_path(@character) }
        format.js
      end
    else
      respond_to do |format|
        format.html { render 'characters/show' }
        format.js
      end
    end
  end

  def edit
    @character_event = CharacterEvent.find(params[:id])
  end

  def update
    @character = Character.find(@character_event.character_id)
    @project = Project.find(@character.project_id)
    @character_event.update(character_event_params)
    respond_to do |format|
      if @character_event.save
        format.html
        format.js
      else
        format.html { render :edit }
        format.js
      end
    end
  end

  def destroy
    @character_event = CharacterEvent.find(params[:id])
    @character_event.destroy
    @character = Character.find(@character_event.character_id)
    @project = Project.find(@character.project_id)
    redirect_to project_bibles_path(@project)
  end

  private

  def set_character
    @character = Character.find(params[:character_id])
  end

  def character_event_params
    params.require(:character_event).permit(:character_id, :content, :scene_id)
  end
end
