class Question < ActiveRecord::Base
  belongs_to :faq
  validates :name_pt, presence: true
  validates :name_en, presence: true
  validates :answer_pt, presence: true
  validates :answer_en, presence: true
end
