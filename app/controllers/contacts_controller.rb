class ContactsController < ApplicationController

	def new
		@contact = Contact.new
	end

	def create
		@contact = Contact.new(contact_params)
		@concat.save
	end

private

def contact_params
	params.require(:contact).permit(:name, :email, :comments)
end


end