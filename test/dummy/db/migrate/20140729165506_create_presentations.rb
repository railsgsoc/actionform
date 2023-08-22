class CreatePresentations < ActiveRecord::Migration[6.1]
  def change
    create_table :presentations do |t|
      t.string :topic
      t.string :duration
      t.references :speaker, index: true

      t.timestamps
    end
  end
end
