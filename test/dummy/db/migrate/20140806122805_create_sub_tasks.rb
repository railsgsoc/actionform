class CreateSubTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :sub_tasks do |t|
      t.string :name
      t.string :description
      t.boolean :done
      t.references :task, index: true

      t.timestamps
    end
  end
end
