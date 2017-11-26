class Order < ActiveRecord::Base
  has_many :order_items

  def total
    self.order_items.inject(0) {|sum, obj| sum + obj.product.price}
  end
end
