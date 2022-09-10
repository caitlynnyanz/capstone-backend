class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.integer :user_id
      t.integer :goal_id
      t.integer :list_id
      t.string :name
      t.string :notes

      t.timestamps
    end
  end
end
