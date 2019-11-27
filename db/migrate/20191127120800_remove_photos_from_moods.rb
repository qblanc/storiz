class AddMoodItemToMoods < ActiveRecord::Migration[5.1]
  def change
    remove_column :moods, :photos
  end
end
