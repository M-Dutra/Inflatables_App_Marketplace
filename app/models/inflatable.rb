class Inflatable < ApplicationRecord
  has_one_attached :photo
  belongs_to :user
  validates :title, presence: true
  validates :description, length: { minimum: 6 }
  validates :price, presence: true
  validates :category, presence: true
end
