class UserSerializer < ActiveModel::Serializer
  attributes :id, :fName, :lName, :email, :imageLink
end
