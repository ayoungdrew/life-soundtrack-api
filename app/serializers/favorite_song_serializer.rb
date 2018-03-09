class FavoriteSongSerializer < ActiveModel::Serializer
  attributes :id, :story, :story_date
  # has_one :user
  has_one :song
end
