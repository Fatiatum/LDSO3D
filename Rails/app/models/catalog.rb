class Catalog < ActiveRecord::Base
	validates :text_pt, presence: true
	validates :text_en, presence: true
	validates :exp_title_pt, presence: true
	validates :exp_title_en, presence: true
	validates :exp_text_pt, presence: true
	validates :exp_text_en, presence: true
end
