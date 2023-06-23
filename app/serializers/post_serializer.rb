class PostSerializer < ActiveModel::Serializer
    attributes :title, :short_content, :tags
  
    has_many :tags, serializer: TagSerializer
    def short_content
      "#{object.content[0..39]}..."
    end
  
    def tags 
      object.tags.pluck(:name)
    end
  end