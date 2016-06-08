class Api::V1::UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email

  def name
    "#{object.first_name} #{object.last_name || ''}"
  end
end
