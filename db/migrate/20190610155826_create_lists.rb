class CreateLists < ActiveRecord::Migration[5.1]
  def change
    create_table :lists do |t|
      t.string :title
      t.string :description
      t.boolean :completed, default: false

      t.timestamps null: false
    end
  end
end
