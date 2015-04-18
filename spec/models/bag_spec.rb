require 'spec_helper'

describe Bag do
  context 'valid Bag' do
    it 'is valid with a size "small"' do
      # bag = Bag.new(size: "small")
      expect(build(:bag)).to be_valid
    end

    # it 'is valid with a size "medium"' do
    #   bag = Bag.new(size: "medium")
    #   expect(bag).to be_valid
    # end

    # it 'is valid with a size "large"' do
    #   bag = Bag.new(size: "large")
    #   expect(bag).to be_valid
    # end
  end

  context 'invalid Bag' do
    it 'is invalid without a size' do
      bag = Bag.new(size: nil)
      expect(bag).to_not be_valid
    end
  end
end
