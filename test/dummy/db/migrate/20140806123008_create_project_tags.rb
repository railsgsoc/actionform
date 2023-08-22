class CreateProjectTags < ActiveRecord::Migration[6.1]
  def change
    create_table :project_tags do |t|
      t.references :project, index: true
      t.references :tag, index: true

      t.timestamps
    end
  end
end
