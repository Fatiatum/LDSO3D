class ProductController < ApplicationController
  def new	
  end
  def create
  	@product = Product.new(params[:product])
 
	@product.save
	redirect_to @product
  end
  def view
  end
end
