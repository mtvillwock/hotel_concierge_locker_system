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
    it 'is invalid without a size' do
      bag = Bag.new(size: nil)
      expect(bag).to_not be_valid
      # p bag.errors.messages[:size]
      # expect(bag.errors.messages[:size]).to end_with("please use small, medium, or large as values")
    end
  end
end
