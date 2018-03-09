class FavoriteSongSerializer < ActiveModel::Serializer
  attributes :id, :story, :story_date
<<<<<<< HEAD
  has_one :user
=======
  # has_one :user
>>>>>>> api
  has_one :song
end
