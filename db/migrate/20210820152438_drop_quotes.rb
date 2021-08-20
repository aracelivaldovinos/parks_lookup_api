class DropQuotes < ActiveRecord::Migration[5.2]
  def change
    drop_table :quotes
  end
end
