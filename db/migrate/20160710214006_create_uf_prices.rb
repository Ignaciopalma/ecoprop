class CreateUfPrices < ActiveRecord::Migration
  def change
    create_table :uf_prices do |t|
      t.integer :uf_price

      t.timestamps null: false
    end
  end
end
