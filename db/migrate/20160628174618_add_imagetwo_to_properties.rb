class AddImagetwoToProperties < ActiveRecord::Migration
  def change
    add_column :properties, :imagetwo, :string
  end
end
