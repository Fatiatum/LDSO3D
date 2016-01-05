class CatalogController < ApplicationController
  before_filter :authorize, only: [:edit]
  
  def index
    @catalog = Catalog.first
    @products = Product.all
    @cont = Contact.new
    @locale = params[:locale]
  end

  def show
  	@catalog = Catalog.first
  end

  def edit
  	@catalog = Catalog.first
  end

  def create
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
  		params.require(:catalog).permit(:text_pt, :exp_text_pt, :exp_title_pt, :text_en, :exp_text_en, :exp_title_en)
  	end
end


