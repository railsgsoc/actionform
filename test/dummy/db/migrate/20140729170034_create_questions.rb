class CreateQuestions < ActiveRecord::Migration[6.1]
  def change
    create_table :questions do |t|
      t.text :content
      t.references :survey, index: true

      t.timestamps
    end
  end
end
