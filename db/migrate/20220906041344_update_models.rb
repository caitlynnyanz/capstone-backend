class UpdateModels < ActiveRecord::Migration[7.0]
  def change
    ### Habit
    remove_column :habits, :type, :string
    add_column :habits, :icon_name, :string

    ### Goal
    remove_column :goals, :type, :string
    remove_column :goals, :end_reflection, :string
    add_column :goals, :end_reflection_completed, :boolean, default: false
    add_column :goals, :active, :boolean, default: true
    add_column :goals, :total_tasks, :integer
    add_column :goals, :total_tasks_completed, :integer


    ### Task
    remove_column :tasks, :notes, :string
    add_column :tasks, :description, :string
    add_column :tasks, :completed, :boolean, default: false
  end
end
