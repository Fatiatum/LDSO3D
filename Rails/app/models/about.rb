class About < ActiveRecord::Base
	mount_uploader :image, FileUploader
	validates :text_pt, presence: true
	validates :text_en, presence: true
end
