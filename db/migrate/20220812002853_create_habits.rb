class CreateHabits < ActiveRecord::Migration[7.0]
  def change
    create_table :habits do |t|
      t.integer :user_id
      t.string :name
      t.string :description
      t.string :start_date
      t.string :generated_end_date
      t.string :type

      t.timestamps
    end
  end
end
