class AddImagefiveToProperties < ActiveRecord::Migration
  def change
    add_column :properties, :imagefive, :string
  end
end
