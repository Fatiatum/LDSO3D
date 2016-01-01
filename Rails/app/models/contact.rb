class Contact < ActiveRecord::Base
	validates :text_pt, presence: true
	validates :phone_pt, presence: true
	validates :address_pt, presence: true
	validates :email_pt, presence: true
	validates :text_en, presence: true
	validates :phone_en, presence: true
	validates :address_en, presence: true
	validates :email_en, presence: true
end
