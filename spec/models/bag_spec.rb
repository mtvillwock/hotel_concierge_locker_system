require 'spec_helper'

describe Bag do
# RSpec.describe Bag, :type => :model do
  context 'valid Bag' do

    it 'is valid with a size "small"' do
      bag = Bag.new(size: "small")
      expect(bag).to be_valid
    end

    it 'is valid with a size "medium"' do
      bag = Bag.new(size: "medium")
      expect(bag).to be_valid
    end

    it 'is valid with a size "large"' do
      bag = Bag.new(size: "large")
      expect(bag).to be_valid
    end
  end

  context 'invalid Bag' do
    it 'is invalid without a bag size' do
      bag = Bag.new(size: nil)
      expect(bag).to be_invalid
      expect(bag.errors[:size]).to include("please use small, medium, or large as values")
    end
  end
end
