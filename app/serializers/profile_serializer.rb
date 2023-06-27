class ProfileSerializer < ActiveModel::Serializer
  attributes :username, :email, :bio, :avatar_url

  def include_timestamps?
    false
  end
end