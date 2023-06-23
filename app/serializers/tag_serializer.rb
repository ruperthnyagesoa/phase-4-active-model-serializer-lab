class TagSerializer < ActiveModel::Serializer
    attributes :name, :posts
  end