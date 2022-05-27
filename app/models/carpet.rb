class Carpet < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_one_attached :photo
  validates :name, presence: true, length: { minimum: 3, maximum: 50 }
  validates :condition, presence: true, inclusion: { in: %w(poor slightly\ used good like\ new) }
  validates :description, length: { minimum: 3, maximum: 500 }, allow_blank: true
  validates :address, presence: true
  validates :user_id, presence: true
  validates :price, presence: true

  include PgSearch::Model
  pg_search_scope :search_by_details,
  against: [ :name, :description, :address, :condition ],
  using: {
    tsearch: { prefix: true }
  }
end
