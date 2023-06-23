class AuthorSerializer < ActiveModel::Serializer
  attributes :name, :profile, :posts 

  has_one :profile, serializer: ProfileSerializer
  has_many :posts, serializer: PostSerializer

end