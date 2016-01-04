class ProductsController < ApplicationController
	before_filter :authorize, only: [:edit, :new]

	def index
		@products = Product.all
		@catalog = Catalog.first
		@locale = params[:locale]
	end

	def show
		@product = Product.find(params[:id])
		@locale = params[:locale]
		@experiences = Experience.where(:Product_id => @product.id)
	end

	def new	
		@product = Product.new
	end

	def edit
		@product = Product.find(params[:id])
	end

	def create
		@product = Product.new(product_params)

		if @product.save
			redirect_to new_experience_path(:Product_id => @product.id)
		else
			render 'new'
		end

	end

	def update
		@product = Product.find(params[:id])

		if @product.update(product_params)
			redirect_to @product
		else
			render 'edit'
		end
	end

	# DELETE /experiences/1
  	# DELETE /experiences/1.json
  	def destroy
  		@product = Product.find(params[:id])
  		@product.destroy
  		respond_to do |format|
  			format.html { redirect_to catalog_index_path, notice: 'Product was successfully destroyed.' }
  			format.json { head :no_content }
  		end
 	end

  private 

  def product_params
  	params.require(:product).permit(:name_pt, :description_pt, :name_en, :description_en, :image)
  end

end
