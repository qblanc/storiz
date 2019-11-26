class MoodsController < ApplicationController
  def show
    @mood = Mood.find(params[:id])
  end
end
