class Question < ActiveRecord::Base
  belongs_to :faq
  validates :name, presence: true
end
