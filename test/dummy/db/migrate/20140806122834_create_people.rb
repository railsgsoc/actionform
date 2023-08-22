class CreatePeople < ActiveRecord::Migration[6.1]
  def change
    create_table :people do |t|
      t.string :name
      t.string :role
      t.string :description
      t.references :project, index: true

      t.timestamps
    end
  end
end
