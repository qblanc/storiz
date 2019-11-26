class BiblesController < ApplicationController
  def show
    @characters = Character.all
    @scenes = Scenes.all
  end
end
