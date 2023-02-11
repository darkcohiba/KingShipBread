class Order < ApplicationRecord
  belongs_to :bread
  belongs_to :user
end
