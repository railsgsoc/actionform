class CreateProducers < ActiveRecord::Migration[6.1]
  def change
    create_table :producers do |t|
      t.string :name
      t.string :studio
      t.references :artist, index: true

      t.timestamps
    end
  end
end
