class Room < ApplicationRecord
    has_many :reservations

    validates :name, presence: true
    validates :room_type, presence: true
    validates :capacity, numericality: {only_integer: true, greater_than: 0}
end
