class FixTerrainName < ActiveRecord::Migration
  def change
  	rename_column :properties, :terreain, :terrain
  end
end
