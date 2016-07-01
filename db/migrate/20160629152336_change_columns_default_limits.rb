class ChangeColumnsDefaultLimits < ActiveRecord::Migration
	def change
		change_column :properties, :price, :integer, :limit => 6
		change_column :properties, :common_expenses, :integer, :limit => 6	
	end
end
