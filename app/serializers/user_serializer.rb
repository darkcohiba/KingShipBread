class UserSerializer < ActiveModel::Serializer
  attributes :id, :full_name, :username, :email

  def full_name
    return "#{object.first_name} #{object.last_name} "
  end
end
