class Bread < ApplicationRecord
    has_many :orders
    has_many :breads, through: :orders
end
