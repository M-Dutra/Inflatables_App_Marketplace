class Review < ApplicationRecord
  belongs_to :inflatable

  validates :content, presence: true
end
