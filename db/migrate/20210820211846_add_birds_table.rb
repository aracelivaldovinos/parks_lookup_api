class AddBirdsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :birds do |t|
      t.string :family_name
      t.string :common_name
      t.string :color
      t.string :geography
      t.timestamps 
    end
  end
end
