class CatalogController < ApplicationController
  def index
    @catalog = Catalog.first
    @products = Product.all
    @cont = Contact.new
  end

  def show
  	@catalog = Catalog.first
  end

  def edit
  	@catalog = Catalog.first
  end

  def create
    @contact = Contact.new(contact_params) 
    @mail = Contact.first.email 
    ManageMailer.contact(@contact, @mail).deliver_now 

  end

  def update
  	@catalog = Catalog.find(params[:id])
  	if @catalog.update(catalog_params)
  		redirect_to @catalog
  	else
  		render 'edit'
  	end
  end

  private
  	def catalog_params
  		params.require(:catalog).permit(:text, :exp_text, :exp_title)
  	end
end


