class BreadSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :price
end
