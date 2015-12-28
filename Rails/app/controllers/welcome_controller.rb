class WelcomeController < ApplicationController
  def index
    @welcome = Welcome.first
  end

  def show
  	@welcome = Welcome.first
  end

  def edit
  	@welcome = Welcome.first
  end

  def update
  	@welcome = Welcome.first
  	if @welcome.update(welcome_params)
  		redirect_to @welcome
  	else
  		render 'edit'
  	end
  end

  private
  	def welcome_params
  		params.require(:welcome).permit(:title, :subtitle, :image, :texttitle, :text)
  	end
end
