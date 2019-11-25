class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.references :user, null: false, foreign_key: true
      t.string :title
      t.text :pitch
      t.string :category
      t.text :synopsis

      t.timestamps
    end
  end
end
