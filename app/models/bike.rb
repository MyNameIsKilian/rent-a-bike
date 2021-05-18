class Bike < ApplicationRecord
  belongs_to :user
  has_many_attached :photos # for active storage
  validates :size, presence: true
  validates :price, presence: true
  validates :color, presence: true
end
