class CreateConferences < ActiveRecord::Migration[6.1]
  def change
    create_table :conferences do |t|
      t.string :name
      t.string :city

      t.timestamps
    end
  end
end
