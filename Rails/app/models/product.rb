class Product < ActiveRecord::Base
	mount_uploader :image, FileUploader
	validates :name_pt, presence: true
	validates :description_pt, presence: true
	validates :name_en, presence: true
	validates :description_en, presence: true
	has_many :experiences, dependent: :destroy
	
end