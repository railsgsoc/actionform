class CreateTasks < ActiveRecord::Migration[4.2]
  def change
    create_table :tasks do |t|
      t.string :name
      t.string :description
      t.boolean :done
      t.references :project, index: true

      t.timestamps null: false
    end
  end
end
