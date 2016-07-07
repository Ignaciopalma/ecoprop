class SalesController < ApplicationController

	def index
		@properties_for_sale = Property.where(:for_sale => true)
	end

	def house
		@houses_for_sale = Property.where(house: true, for_sale: true)
	end

	def apartment
		@apartments_for_sale = Property.where(apartment: true, for_sale: true)
	end

	def terrain
		@terrains_for_sale = Property.where(terrain: true, for_sale: true)
	end

end
