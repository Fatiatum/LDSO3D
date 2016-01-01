class Experience < ActiveRecord::Base
  belongs_to :product
  validates :name_pt, presence: true
  validates :name_en, presence: true
end