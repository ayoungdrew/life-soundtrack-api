class PhaseSerializer < ActiveModel::Serializer
  attributes :id, :name, :start_date, :end_date, :editable
  has_one :user

  def editable
    scope == object.user.songs
  end
end
