class AboutController < ApplicationController
  before_filter :authorize, only: [:edit]

  def index
    @about = About.first
    @locale = params[:locale]
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
  		params.require(:about).permit(:text_pt, :text_en, :image)
  	end
end
