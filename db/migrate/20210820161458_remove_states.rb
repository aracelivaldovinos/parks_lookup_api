class RemoveStates < ActiveRecord::Migration[5.2]
  def change
    remove_column :parks, :states
  end
end
