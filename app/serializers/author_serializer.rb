class AuthorSerializer < ActiveModel::Serializer
  attributes :name, :profile

  has_one :profile, serializer: ProfileSerializer
  has_many :posts, serializer: PostSerializer

  def short_content
    object.posts.first.content.truncate(40) + "..."
  end

  def include_posts?
    scope[:include_posts]
  end
end