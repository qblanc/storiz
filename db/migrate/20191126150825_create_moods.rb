class CreateMoods < ActiveRecord::Migration[6.0]
  def change
    create_table :moods do |t|
      t.references :project, null: false, foreign_key: true
      t.references :character, null: false, foreign_key: true
      t.references :scene, null: false, foreign_key: true

      t.timestamps
    end
  end
end
