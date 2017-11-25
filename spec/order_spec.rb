require 'spec_helper'

describe Order do

  describe 'Database' do
    it {is_expected.to have_db_column :id}
    it {is_expected.to have_many :order_items}

  end
end
