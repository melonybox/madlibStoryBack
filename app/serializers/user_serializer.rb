class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :current_chapter
end
