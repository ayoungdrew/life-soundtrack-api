class Phase < ApplicationRecord
  belongs_to :user
  has_many :favorite_songs
  has_many :songs, through: :favorite_songs
end
