class AddStateToParks < ActiveRecord::Migration[5.2]
  def change
    add_column :parks, :state, :string
  end
end
