class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :room

  enum :status, {pending: 0, approved: 1, canceled: 2}

  validates :date, :start_time, presence: true
end
