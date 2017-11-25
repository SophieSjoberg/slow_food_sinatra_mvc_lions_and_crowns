require 'spec_helper'

describe Product do

  describe 'menu' do
    it {is_expected.to have_db_column :name}
    it {is_expected.to have_db_column :price}
    it {is_expected.to have_db_column :description}
    it {is_expected.to have_db_column :category}
  end

  describe 'validations' do
    it {is_expected.to validate_presence_of :name }
    it {is_expected.to validate_presence_of :price }
  end
end
