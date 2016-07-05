class CreateSpeakers < ActiveRecord::Migration[4.2]
  def change
    create_table :speakers do |t|
      t.string :name
      t.string :occupation
      t.references :conference, index: true

      t.timestamps null: false
    end
  end
end
