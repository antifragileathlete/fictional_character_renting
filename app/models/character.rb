class Character < ApplicationRecord
  include PgSearch::Model  
  pg_search_scope :search_by_name_and_genre,
  against: [ :name, :genre ],
  using: {
    tsearch: { prefix: true } 
  }
  belongs_to :user
  has_one_attached :photo
  has_many :bookings, dependent: :destroy
end
