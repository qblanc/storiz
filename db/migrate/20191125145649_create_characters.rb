class CreateCharacters < ActiveRecord::Migration[6.0]
  def change
    create_table :characters do |t|
      t.references :project, null: false, foreign_key: true
      t.string :first_name
      t.string :last_name
      t.datetime :birthdate
      t.string :genre
      t.text :description

      t.timestamps
    end
  end
end
