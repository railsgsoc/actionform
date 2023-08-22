class CreateSpeakers < ActiveRecord::Migration[6.1]
  def change
    create_table :speakers do |t|
      t.string :name
      t.string :occupation
      t.references :conference, index: true

      t.timestamps
    end
  end
end
