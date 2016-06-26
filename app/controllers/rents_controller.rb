class RentsController < ApplicationController
	def house
		@houses_for_rent = Property.where(:house => true, :for_rent => true)
	end

	def apartment
		@apartments_for_rent = Property.where(apartment: true, for_rent: true)
	end

	def terrain
		@terrains_for_rent = Property.where(:terrain => true, :for_rent => true)
	end
end
