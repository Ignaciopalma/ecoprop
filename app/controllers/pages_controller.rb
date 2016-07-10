class PagesController < ApplicationController
	before_action :authenticate_admin!, except: [ :index, :about, :contact ]
	
	def index
		@property_highlight = Property.where(highlight: true)
		@uf_price = UfPrice.new
		@uf_price_placeholder = UfPrice.last.uf_price
	end

	def about
	end

	def create
 
	end

	def panel
		@messages = ContactForm.all
	end

	private

	def contact_form_params
		params.require(:contact_form).permit(:name, :phone, :email, :subject, :message)
	end
end
