class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :inflatable
  validates :start_date, presence: true
  validates :end_date, presence: true

  def pending?
    status == nil
  end
end
