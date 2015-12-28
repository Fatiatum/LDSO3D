class About < ActiveRecord::Base
	mount_uploader :image, FileUploader
	validates :text, presence: true
end
