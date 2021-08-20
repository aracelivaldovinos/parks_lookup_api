class Bird < ApplicationRecord
  validates :family_name, presence: true
  validates :common_name, presence: true
  validates :color, presence: true
  validates :geography, presence: true
end