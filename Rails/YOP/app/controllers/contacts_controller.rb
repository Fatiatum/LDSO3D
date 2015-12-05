class ContactsController < ApplicationController
  def index
    @contact = Contact.first
  end

  def show
  	@contact = Contact.first
  end

  def edit
  	@contact = Contact.first
  end

  def update
  	@contact = Contact.first
  	if @contact.update(contact_params)
  		redirect_to @contact
  	else
  		render 'edit'
  	end
  end

  private
  	def contact_params
  		params.require(:contact).permit(:text, :phone, :email, :address)
  	end
end
