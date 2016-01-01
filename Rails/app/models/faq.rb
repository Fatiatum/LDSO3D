class Faq < ActiveRecord::Base
	has_many :questions, dependent: :destroy
	accepts_nested_attributes_for :questions, reject_if: proc { |attributes| attributes.all? {|k,v| v.blank? || ['name_pt', 'name_en', 'answer_pt', 'answer_en'].include?(k)} }, allow_destroy: true
end