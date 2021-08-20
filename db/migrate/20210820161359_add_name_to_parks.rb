class AddNameToParks < ActiveRecord::Migration[5.2]
  def change
    add_column :parks, :name, :string
  end
end
