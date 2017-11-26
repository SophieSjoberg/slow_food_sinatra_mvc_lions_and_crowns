class Order < ActiveRecord::Base
  VALID_STATUS = ['pending', 'confirmed']
  has_many :order_items

  validates_inclusion_of :status, in: VALID_STATUS

  def total
    self.order_items.inject(0) {|sum, obj| sum + obj.product.price}
  end

  def confirmed?
    self.status == 'confirmed'
  end

  def pending?
    self.status == 'pending'
  end
end
