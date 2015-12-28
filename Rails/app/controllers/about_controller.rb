class AboutController < ApplicationController
  def index
    @about = About.first
  end

  def show
  	@about = About.first
  end

  def edit
  	@about = About.first
  end

  def update
  	@about = About.first
  	if @about.update(about_params)
  		redirect_to @about
  	else
  		render 'edit'
  	end
  end

  private
  	def about_params
  		params.require(:about).permit(:text, :image)
  	end
end
