class AddForSaleToProperties < ActiveRecord::Migration
  def change
    add_column :properties, :for_sale, :boolean
  end
end
