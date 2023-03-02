class Inflatable < ApplicationRecord
  has_one_attached :photo
  belongs_to :user
  has_many :bookings
  has_many :reviews, dependent: :destroy

  validates :title, presence: true
  validates :description, length: { minimum: 6 }
  validates :price, presence: true
  validates :category, presence: true
end
