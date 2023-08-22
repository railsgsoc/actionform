class CreateProfiles < ActiveRecord::Migration[6.1]
  def change
    create_table :profiles do |t|
      t.string :twitter_name
      t.string :github_name
      t.references :user, index: true

      t.timestamps
    end
  end
end
