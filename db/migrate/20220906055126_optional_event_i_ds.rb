class OptionalEventIDs < ActiveRecord::Migration[7.0]
  def change
    change_column :events, :habit_id, :integer, deafult: "optional"
    change_column :events, :goal_id, :integer, deafult: "optional"
    change_column :events, :task_id, :integer, deafult: "optional"
  end
end
