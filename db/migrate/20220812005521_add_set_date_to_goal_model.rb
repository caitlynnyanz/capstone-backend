class AddSetDateToGoalModel < ActiveRecord::Migration[7.0]
  def change
    add_column :goals, :set_date, :string
  end
end
