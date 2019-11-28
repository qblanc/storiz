class CreateMoods < ActiveRecord::Migration[6.0]
  def change
    create_table :moods do |t|
      t.references :project, foreign_key: true
      t.references :character, foreign_key: true
      t.references :scene, foreign_key: true

      t.timestamps
    end
  end
end
