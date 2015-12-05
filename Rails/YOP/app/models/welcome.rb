class Welcome < ActiveRecord::Base
	mount_uploader :image, FileUploader
end
