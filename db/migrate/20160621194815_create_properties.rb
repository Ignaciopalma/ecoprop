class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.string :address
      t.integer :price
      t.text :description
      t.integer :rooms
      t.integer :toilets
      t.integer :floors
      t.integer :total_area
      t.integer :house_area
      t.boolean :pool
      t.boolean :furnished
      t.integer :parking
      t.boolean :cellar
      t.boolean :house
      t.boolean :apartment
      t.boolean :terreain
      t.integer :common_expenses
      t.string :district
      t.string :city

      t.timestamps null: false
    end
  end
end
