require 'spec_helper'

describe Locker do
  context 'associations' do
    it { should have_one(:ticket) }
  end

  context 'valid Locker' do
    it 'is valid with a size "small"' do
      expect(build(:small_locker)).to be_valid
    end

    it 'is valid with a size "medium"' do
      expect(build(:medium_locker)).to be_valid
    end

    it 'is valid with a size "large"' do
      expect(build(:large_locker)).to be_valid
    end
  end

  context 'invalid Locker' do
    it 'is invalid without a bag size' do
      expect(build(:locker, size: nil)).to be_invalid
    end

    it 'is invalid with an improper size' do
      locker = Locker.new(size: "not one of the possible sizes")
      locker.valid?
      expect(locker.errors.messages[:size]).to include("please use small, medium, or large as values")
    end
  end
end
