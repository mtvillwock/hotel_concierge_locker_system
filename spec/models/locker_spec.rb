require 'spec_helper'

describe Locker do
  context 'valid Locker' do
    it 'is valid with a size "small"' do
      locker = Locker.new("small")
      expect(locker).to be_valid
    end

    it 'is valid with a size "medium"' do
      locker = Locker.new("medium")
      expect(locker).to be_valid
    end

    it 'is valid with a size "large"' do
      locker = Locker.new("large")
      expect(locker).to be_valid
    end
  end

  context 'invalid Locker' do
    it 'is invalid without a bag size' do
      locker = Locker.new(size: nil)
      expect(locker).to be_invalid
      expect(locker.errors[:size]).to include("please use small, medium, or large as values")
    end
  end
end
