class PagesController < ApplicationController
	def index
	end

	def about
	end

	def contact

		@contact_form = ContactForm.new

		
		@contact_form.save
		# 	redirect_to root_path, notice: 'Gracias por el mensaje.' 
		# else
		# 	redirect_to pages_about_path 
		# end
 
	end

	private

	def contact_form_params
		params.require(:contact_form).permit(:name, :phone, :email, :subject, :message)
	end
end
