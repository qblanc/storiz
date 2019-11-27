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
    @moooditem = Mooditem.new(mooditem_params)
    @mooditem.mood = @mood
    if @mood.valid?
      @mood.save!
      redirect_to mooditem_path(@mooditem)
    else
      redirect_to :new
    end
  end

  def edit
  end

  def update
    @mooditem.update(mooditem_params)
    respond_to do |format|
      format.html do
        redirect_to mooditem_path(@mooditem)
      end
      format.js
    end
  end

  private

  def mooditem_params
    params.require(:mooditem).permit(:left, :top, :photo)
  end

  def find_mood
    @mood = Mood.find(params[:mood_id])
  end

  def find_mooditem
    @mooditem = Mooditem.find(params[:id])
  end
end
