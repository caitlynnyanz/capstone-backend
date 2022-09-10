class RemoveListIdFromTaskModel < ActiveRecord::Migration[7.0]
  def change
    remove_column :tasks, :list_id, :integer
  end
end
