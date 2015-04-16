require 'spec_helper'

describe Bag do
# RSpec.describe Bag, :type => :model do
  context 'valid Bag' do

    it 'has a valid factory' do
      expect(Factory.create(:bag)).to be_valid
    end

    let(:bag) { (Factory.create(:bag))}

    it 'is valid with a size "small"' do

      expect(bag).to be_valid
    end

    it 'is valid with a size "medium"' do

      expect(bag).to be_valid
    end

    it 'is valid with a size "large"' do

      expect(bag).to be_valid
    end
  end

  context 'invalid Bag' do
    it 'is invalid without a bag size' do

      expect(bag).to be_invalid
      expect(bag.errors[:size]).to include("please use small, medium, or large as values")
    end
  end
end
