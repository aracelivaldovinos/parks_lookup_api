class AddDescriptionToParks < ActiveRecord::Migration[5.2]
  def change
    add_column :parks, :description, :string
  end
end
