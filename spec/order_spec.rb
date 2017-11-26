require 'spec_helper'

describe Order do

  describe 'Database' do
    it {is_expected.to have_db_column :id}
    it {is_expected.to have_many :order_items}
  end



    describe '#total' do
      let!(:product_1) {Product.create(name: 'Pizza',
      price: 105,
      category: 'Main course')}

      let!(:product_2) {Product.create(name: 'Nachos',
        price: 60,
        category: 'Main course')}

      let!(:item_1) {OrderItem.create(product: product_1, order: subject)}
      let!(:item_2) {OrderItem.create(product: product_2, order: subject)}

    end

end
