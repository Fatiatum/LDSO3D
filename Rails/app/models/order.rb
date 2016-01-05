class Order < ActiveRecord::Base
	validates :name, presence: true
	validates :email, presence: true
	attr_accessor :payment_type, :number_person, :date_selected
end
