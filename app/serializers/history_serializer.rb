class HistorySerializer < ActiveModel::Serializer
  attributes :id, :user_id, :madlib_id, :placeHolderFilled
end
