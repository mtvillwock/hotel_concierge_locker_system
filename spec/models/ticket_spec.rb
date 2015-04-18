require 'spec_helper'

describe Ticket do
  context 'associations' do
    it { should validate_presence_of :locker_id }
    it { should validate_presence_of :bag_id }
  end

  context 'valid Ticket' do
    it 'is valid with a bag id and locker id' do
      expect(build(:ticket, locker_id:1, bag_id: 1)).to be_valid
    end
  end

  context 'invalid Ticket' do
    it 'is invalid with non-integer locker id' do
      expect(build(:ticket, locker_id: "not a number", bag_id: 1)).to be_invalid
    end

    it 'is invalid with no locker id' do
      expect(build(:ticket, locker_id: nil, bag_id: 1)).to be_invalid
    end

    it 'is invalid with non-integer bag id' do
      expect(build(:ticket, locker_id: 1, bag_id: "not a number")).to be_invalid
    end

    it 'is invalid with no bag id' do
      expect(build(:ticket, locker_id: 1, bag_id: nil)).to be_invalid
    end
  end
end
