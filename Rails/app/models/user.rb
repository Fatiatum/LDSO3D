class User < ActiveRecord::Base
	has_secure_password
	validates :email, presence: true
	validates :password, presence: true
	validates :iban, presence: true
	validates :nib, presence: true
	validates :fb_link, presence: true
	validates :tw_link, presence: true
	validates :insta_link, presence: true
end
