class AddImagefourToProperties < ActiveRecord::Migration
  def change
    add_column :properties, :imagefour, :string
  end
end
