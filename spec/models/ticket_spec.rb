require 'spec_helper'

describe Ticket do
  context 'associations' do
    it { should validate_presence_of :locker_id }
    it { should validate_presence_of :bag_id }
  end

  context 'valid Ticket' do
    it 'is valid with a bag id and locker id' do
      expect(build(:valid_ticket)).to be_valid
    end
  end

  context 'invalid Ticket' do
    it 'is invalid with no locker id' do
      expect(build(:ticket_without_locker)).to be_invalid
    end

    it 'is invalid with no bag id' do
      expect(build(:ticket_without_bag_id)).to be_invalid
    end
  end
end
