class FaqController < ApplicationController
  before_filter :authorize, only: [:edit, :new]

  def index
    @faq = Faq.first
    @locale = params[:locale]
  end

  def show
  	@faq = Faq.first
  end

  def edit
  	@faq = Faq.first
  end

  def update
  	@faq = Faq.find(params[:id])
  	if @faq.update(faq_params)
  		redirect_to @faq
  	else
  		render 'edit'
  	end
  end

  private
  	def faq_params
  		params.require(:faq).permit(questions_attributes: [ :id, :name_pt, :answer_pt, :name_en, :answer_en, :_destroy ])
  	end
end
