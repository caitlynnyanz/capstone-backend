class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.string :title
      t.datetime :start
      t.datetime :end
      t.integer :user_id
      t.integer :habit_id
      t.integer :goal_id
      t.integer :task_id

      t.timestamps
    end
  end
end
