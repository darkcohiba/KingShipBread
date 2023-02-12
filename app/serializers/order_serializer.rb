class OrderSerializer < ActiveModel::Serializer
  attributes :id, :quantity, :total_price, :status, :completed
  has_one :bread
  has_one :user

  def total_price
    self.object.quantity * self.object.bread.price
  end

  def status
    if self.object.completed?
      return "Order is complete!"
    else
      return "Order is not completed"
    end
  end
end
