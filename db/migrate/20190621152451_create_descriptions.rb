class CreateDescriptions < ActiveRecord::Migration[5.1]
  def change
    create_table :descriptions do |t|
      t.text :project
      t.references :title, foreign_key: true

      t.timestamps
    end
     add_index :descriptions, [:title_id, :created_at]
  end
end
