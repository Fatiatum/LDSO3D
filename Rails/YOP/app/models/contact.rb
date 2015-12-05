class Contact < ActiveRecord::Base
	validates :text, presence: true
	validates :phone, presence: true
	validates :address, presence: true
	validates :email, presence: true
end
