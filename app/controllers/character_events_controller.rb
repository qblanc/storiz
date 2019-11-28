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

  def delete

  end

  private

  def set_character
    @character = Character.find(params[:character_id])
  end

  def character_event_params
    params.require(:character_event).permit(:character_id, :content, :scene_id)
  end
end
