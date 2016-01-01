class Product < ActiveRecord::Base
	mount_uploader :image, FileUploader
	validates :name_pt, presence: true
	validates :description_pt, presence: true
	validates :name_en, presence: true
	validates :description_en, presence: true
	has_many :experiences, dependent: :destroy
	accepts_nested_attributes_for :experiences, reject_if: proc { |attributes| attributes.all? {|k,v| v.blank? || ['name_pt', 'name_en'].include?(k)} }, allow_destroy: true

end