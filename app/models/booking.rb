class Booking < ApplicationRecord
  belongs_to :character
  belongs_to :user
  validates :user, presence: true
end
