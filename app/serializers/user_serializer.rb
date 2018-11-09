class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :tone_id, :palette_id
end
