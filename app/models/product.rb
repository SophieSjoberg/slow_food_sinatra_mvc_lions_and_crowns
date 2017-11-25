class Product < ActiveRecord::Base
  VALID_CATEGORIES = ['Starter', 'Main Course', 'Dessert']
  validates :name, presence: true
  validates :price, presence: true
end
