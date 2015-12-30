class Welcome < ActiveRecord::Base
	mount_uploader :image, FileUploader
	validates :title_pt, presence: true
	validates :title_en, presence: true
	validates :subtitle_pt, presence: true
	validates :subtitle_en, presence: true
	validates :texttitle_pt, presence: true
	validates :texttitle_en, presence: true
	validates :text_pt, presence: true
	validates :text_en, presence: true
end
