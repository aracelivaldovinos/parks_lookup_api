class RemoveNationalParks < ActiveRecord::Migration[5.2]
  def change
    remove_column :parks, :national_parks
  end
end
