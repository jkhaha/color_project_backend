class ToneSerializer < ActiveModel::Serializer
  attributes :id, :hex_value, :r, :g, :b, :tone_type
end
