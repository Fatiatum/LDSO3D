class Order < ActiveRecord::Base
	attr_accessor :payment_type, :date_selected, :number_person
end
