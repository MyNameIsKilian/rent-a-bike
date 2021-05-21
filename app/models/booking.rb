class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :bike
  validates :start_date, presence: true
  validates :end_date, presence: true
  # validates :statut, presence: true
  enum status: { pending: 0, accepted: 1, refused: 2 }
end
