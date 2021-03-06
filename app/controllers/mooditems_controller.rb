class MooditemsController < ApplicationController
  before_action :find_mood, only: [:new, :create]
  before_action :find_mooditem, only: [:show, :edit, :update, :destroy]

  def show
    @mood = Mood.find(params[:mood_id])
    @mooditems = Mooditem.all
  end

  def new
    @mooditem = Mooditem.new
  end

  def create
    @mooditem = Mooditem.new(mooditem_params)
    @mooditem.mood = @mood
    if @mooditem.save
      redirect_to mood_path(@mood)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @mooditem.update(mooditem_params)
    respond_to do |format|
      format.html { redirect_to mood_path(@mooditem.mood) }
      format.js
    end
  end

  def destroy
    @mooditem.destroy
    redirect_to mood_path(@mooditem.mood)
  end

  private

  def mooditem_params
    params.require(:mooditem).permit(:left, :top, :height, :width, :depth, :photo)
  end

  def find_mood
    @mood = Mood.find(params[:mood_id])
  end

  def find_mooditem
    @mooditem = Mooditem.find(params[:id])
  end
end
