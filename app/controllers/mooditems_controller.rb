class MooditemsController < ApplicationController
  def show
    @mood = Mood.find(params[:mood_id])
    @mooditem = Mooditem.find(params[:id])
  end

  private

  def mooditem_params
    params.require(:mooditem).permit(:left, :top, :photo)
  end
end
