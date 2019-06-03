class CreateLists < ActiveRecord::Migration[5.1]
  def change
    create_table :lists do |t|
      t.string :descripition
      t.boolean :completed, default:false

      t.timestamps
    end
  end
end
