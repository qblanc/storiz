class CreateScenes < ActiveRecord::Migration[6.0]
  def change
    create_table :scenes do |t|
      t.references :project, null: false, foreign_key: true
      t.string :title
      t.integer :number
      t.text :content

      t.timestamps
    end
  end
end
