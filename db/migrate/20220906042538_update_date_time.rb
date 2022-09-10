class UpdateDateTime < ActiveRecord::Migration[7.0]
  def change
     ### Habit
     remove_column :habits, :start_date, :string
     remove_column :habits, :generated_end_date, :string
     add_column :habits, :start_date, :datetime
     add_column :habits, :end_date, :datetime
 
     ### Goal
     remove_column :goals, :set_date, :string
     remove_column :goals, :achieve_date, :string
     add_column :goals, :start_date, :datetime
     add_column :goals, :end_date, :datetime

  end
end
