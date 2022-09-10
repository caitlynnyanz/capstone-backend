class ChangeDatetimeStringJournal < ActiveRecord::Migration[7.0]
  def change
    change_column :journals, :date, :string
  end
end
