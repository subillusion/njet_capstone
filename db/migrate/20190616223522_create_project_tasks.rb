class CreateProjectTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :project_tasks do |t|
      t.string :content
      t.references :Project__title, foreign_key: true

      t.timestamps
    end
  end
end
