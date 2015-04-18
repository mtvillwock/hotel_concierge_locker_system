require 'spec_helper'

describe Bag do
  context 'valid Bag' do
    it 'is valid with a valid size "small", "medium", or "large" provided' do
      # bag = Bag.new(size: "small")
      expect(build(:bag)).to be_valid
    end
  end

  context 'invalid Bag' do
    it 'is invalid without a size' do
      expect(build(:bag, size: nil)).to_not be_valid
    end

    it 'is invalid with an improper size' do
      bag = Bag.new(size: "not one of the possible sizes")
      bag.valid?
      expect(bag.errors.messages[:size]).to include("please use small, medium, or large as values")
    end
  end
end
