class CharactersController < ApplicationController
  before_action :set_character, only: [:show, :edit, :update, :destroy]

  def create
    CharacterEvent.create!(character_params)
  end

  private

  def set_character
    @character = Character.find(params[:id])
  end

  def character_params
    params.require(:character_events).permit(:character_id, :content, :scene_id)
  end
end
