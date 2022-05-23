class Carpet < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :name, presence: true, length: { minimum: 3, maximum: 50 }
  validates :condition, presence: true, inclusion: { in: %w(poor slightly\ used good like\ new) }
  validates :description, length: { minimum: 3, maximum: 500 }, allow_blank: true
  validates :address, presence: true
  validates :user_id, presence: true
end
