class AddParksTable < ActiveRecord::Migration[5.2]
  def change
    create_table :quotes do |t|
      t.string :states
      t.string :national_parks
    end
  end
end
