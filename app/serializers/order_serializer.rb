class OrderSerializer < ActiveModel::Serializer
  attributes :id, :quantity
  has_one :bread
  has_one :user
end
