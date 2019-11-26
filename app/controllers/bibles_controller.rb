class BiblesController < ApplicationController
  def show
    @characters = Character.all
    @scenes = Scene.all
  end
end
