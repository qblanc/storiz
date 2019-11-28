class AddWidthAndHeightToMooditems < ActiveRecord::Migration[6.0]
  def change
    add_column :mooditems, :width, :integer
    add_column :mooditems, :height, :integer
    add_column :mooditems, :depth, :integer
  end
end
