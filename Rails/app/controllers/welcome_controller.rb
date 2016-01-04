class WelcomeController < ApplicationController
  before_filter :authorize, only: [:edit]

  def index
    @welcome = Welcome.first
    @locale = params[:locale]
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
  		params.require(:welcome).permit(:title_pt, :subtitle_pt, :texttitle_pt, :text_pt,
                                      :title_en, :subtitle_en, :texttitle_en, :text_en, :image)
  	end
end
