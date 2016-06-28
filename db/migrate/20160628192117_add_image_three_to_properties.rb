class AddImageThreeToProperties < ActiveRecord::Migration
  def change
    add_column :properties, :imagethree, :string
  end
end
