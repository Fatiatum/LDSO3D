class ContactsController < ApplicationController
  def index
    @contact = Contact.first
    @cont = Contact.new
  end

  def show
    @contact = Contact.first
  end

  def edit
    @contact = Contact.first
  end

  def create 
    @contact = Contact.new(contact_params)
    @mail = Contact.first.email
    ManageMailer.contact(@contact, @mail).deliver_now

    redirect_to @contact 
  end

  def update
    @contact = Contact.first
    if @contact.update(contact_params_to_save)
      redirect_to @contact
    else
      render 'edit'
    end
  end

  private
    def contact_params_to_save
      params.require(:contact).permit(:text, :phone, :email, :address)
    end

    def contact_params
      params.require(:contact).permit(:from_mail, :name, :subject, :msg)
    end
end


