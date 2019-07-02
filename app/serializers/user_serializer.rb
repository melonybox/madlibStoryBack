class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :current_chapter, :histories

  def histories
    ActiveModel::SerializableResource.new(object.histories,  each_serializer: HistorySerializer)
  end
end
