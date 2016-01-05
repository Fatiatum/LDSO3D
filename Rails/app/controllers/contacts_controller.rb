class ContactsController < ApplicationController
  before_filter :authorize, only: [:edit]
  
  def index
    @contact = Contact.first
    @cont = Contact.new
    @locale = params[:locale]
  end

  def show
    @contact = Contact.first
  end

  def edit
    @contact = Contact.first
  end

  def create 
    @contact = Contact.new(contact_params)
    @from_mail = @contact.from_mail
    @mail = User.last.email
    ManageMailer.contact(@contact, @from_mail).deliver_now 

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
      params.require(:contact).permit(:text_pt, :phone_pt, :email_pt, :address_pt, :text_en, :phone_en, :email_en, :address_en)
    end

    def contact_params
      params.require(:contact).permit(:from_mail, :name, :subject, :msg)
    end
end


