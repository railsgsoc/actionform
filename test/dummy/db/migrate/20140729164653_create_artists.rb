class CreateArtists < ActiveRecord::Migration[6.1]
  def change
    create_table :artists do |t|
      t.string :name
      t.references :song, index: true

      t.timestamps
    end
  end
end
