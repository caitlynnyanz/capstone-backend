class CreateJournals < ActiveRecord::Migration[7.0]
  def change
    create_table :journals do |t|
      t.string :title
      t.text :body
      t.datetime :date
      t.integer :user_id
      t.integer :habit_id
      t.integer :goal_id

      t.timestamps
    end
  end
end
