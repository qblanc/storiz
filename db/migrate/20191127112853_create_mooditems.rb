class CreateMooditems < ActiveRecord::Migration[6.0]
  def change
    create_table :mooditems do |t|
      t.integer :left
      t.integer :top
      t.references :mood, null: false, foreign_key: true

      t.timestamps
    end
  end
end
