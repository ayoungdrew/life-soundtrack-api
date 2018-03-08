class Song < ApplicationRecord
  has_many :favorite_songs, dependent: :destroy
end
