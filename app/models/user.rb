class User < ApplicationRecord
    has_many :orders
    has_many :breads, through: :orders

    validates :username, presence: true
end
