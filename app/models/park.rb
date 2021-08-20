class Park < ApplicationRecord
  validates :area, presence: true
  validates :description, presence: true
  validates :state, presence: true
  validates :name, presence: true
end