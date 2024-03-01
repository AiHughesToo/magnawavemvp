class UserSerializer < ActiveModel::Serializer
  attributes :id, :fName, :lName, :email, :imageLink, :noms

  has_many :nominations
  has_one :stats

  def noms
  noms = Nominations.find_by(user_id: object.id)
  noms
  end

end
