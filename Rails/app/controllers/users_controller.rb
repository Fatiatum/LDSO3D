class UsersController < ApplicationController
  before_filter :authorize, only: [:edit]

  def edit
  	@user = User.first
  end

  def update
  	@user = User.first
  	if @user.update(user_params)
  		redirect_to root_url
  	else
  		render 'edit'
  	end
  end

  private
  	def user_params
  		params.require(:user).permit(:email, :password, :nib, :iban, :fb_link, :tw_link, :insta_link)
  	end
end