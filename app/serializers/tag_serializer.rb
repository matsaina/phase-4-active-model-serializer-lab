class TagSerializer < ActiveModel::Serializer
  attributes :name, :posts

  def posts
    object.posts.map(&:title)
  end

  def include_timestamps?
    false
  end
end