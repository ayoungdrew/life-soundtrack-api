class SongSerializer < ActiveModel::Serializer
  attributes :id, :name, :artist, :story
end
