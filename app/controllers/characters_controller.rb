class CharactersController < ApplicationController
  before_action :set_character, only: [:show, :edit, :update, :destroy]

  def index
    if params[:query].present?
      @characters = Character.global_search(params[:query])
    else
      @characters = Character.all
    end
  end

  def show
    @character = Character.find(params[:id])
    @character_event = CharacterEvent.new
    respond_to do |format|
      format.html
      format.js
    end
  end

  def new
    @character = Character.new
  end

  def create
    @character = Character.new(character_params)
    @project = Project.find(params[:project_id])
    @character.project = @project
    if @character.save
      # respond_to do |format|
        # format.html { redirect_to character_path(@character) }
        # format.js
      # end
      redirect_to project_bibles_path(@project)
    else
      respond_to do |format|
        format.html { render :new }
        format.js
      end
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
    project = @character.project
    @character.destroy
    redirect_to project_bibles_path(project)
  end

  private

  def set_character
    @character = Character.find(params[:id])
  end

  def character_params
    params.require(:character).permit(:first_name, :last_name, :birthdate, :genre, :description, :photo)
  end
end

