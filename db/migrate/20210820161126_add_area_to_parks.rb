class AddAreaToParks < ActiveRecord::Migration[5.2]
  def change
    add_column :parks, :area, :string
  end
end
