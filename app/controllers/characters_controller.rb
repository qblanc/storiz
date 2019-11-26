class CharactersController < ApplicationController
  before_action :set_character, only: [:show, :edit, :update, :destroy]

  def index
    @characters = Character.all
  end

  def show
    @character = Character.find(@character.id)
  end

  def new
    @character = Character.new
  end

  def create
    @character = Character.new(character_params)
    @project = Project.find(params[:project_id])
    @character.project = @project
    if @character.save!
      redirect_to character_path(@character)
    else
      render :new
    end
  end

  def edit
    @character = Character.find(params[:id])
  end

  def update
    @character.update(character_params)
    redirect_to character_path(@character)
  end

  def destroy
    @character.destroy
    redirect_to characters_path
  end

  private

  def set_character
    @character = Character.find(params[:id])
  end

  def character_params
    params.require(:character).permit(:first_name, :last_name, :birthdate, :genre, :description)
  end
end
