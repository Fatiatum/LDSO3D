class Product < ActiveRecord::Base
	mount_uploader :image, FileUploader
	validates :name, presence: true
	validates :description, presence: true
	has_many :experiences, dependent: :destroy
	accepts_nested_attributes_for :experiences, 
				reject_if: proc { |attributes| attributes['name'].blank? }, 
				allow_destroy: true
end