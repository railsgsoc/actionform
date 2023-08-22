class AddAssignmentRefToTasks < ActiveRecord::Migration[6.1]
  def change
    add_reference :tasks, :assignment, index: true
  end
end
