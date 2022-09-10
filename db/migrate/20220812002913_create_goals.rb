class CreateGoals < ActiveRecord::Migration[7.0]
  def change
    create_table :goals do |t|
      t.integer :user_id
      t.integer :habit_id
      t.string :type
      t.string :name
      t.string :description
      t.string :achieve_date
      t.string :end_reflection

      t.timestamps
    end
  end
end
