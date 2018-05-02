class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :say_hello

  has_many :posts

  link(:self) { user_url(object) }

  def say_hello
    "Hello #{object.first_name}"
  end
end
