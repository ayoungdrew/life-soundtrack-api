# frozen_string_literal: true

class User < ApplicationRecord
  include Authentication
  has_many :examples
  has_many :phases
  has_many :favorite_songs
  has_many :songs, through: :favorite_songs
end
