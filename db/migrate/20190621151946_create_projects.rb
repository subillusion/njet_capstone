class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.text :title
      t.references :description, foreign_key: true

      t.timestamps
    end
  end
end
