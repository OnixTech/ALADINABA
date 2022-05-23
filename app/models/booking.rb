class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :carpet
  validates :booked_from, presence: true
  validates :booked_until, presence: true
  validates :user_id, presence: true
  validates :carpet_id, presence: true
end
