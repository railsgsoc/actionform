class CreateEmails < ActiveRecord::Migration[6.1]
  def change
    create_table :emails do |t|
      t.string :address
      t.references :user, index: true

      t.timestamps
    end
  end
end
