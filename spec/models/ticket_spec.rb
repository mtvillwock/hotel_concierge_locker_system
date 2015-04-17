require 'spec_helper'

describe Ticket do
  context 'associations' do
    it { should validate_presence_of :locker_id }
    it { should validate_presence_of :bag_id }
  end

  context 'valid Ticket'
  it 'is valid with a bag id and locker id' do
    ticket = Ticket.new(locker_id: 1, bag_id: 1)
    expect(ticket).to be_valid
  end
  context 'invalid Ticket' do
    it 'is invalid with non-integer locker id' do
      ticket = Ticket.new(locker_id: "not an integer", bag_id: 1)
      expect(ticket).to be_invalid
    end

    it 'is invalid with no locker id' do
      ticket = Ticket.new(locker_id: nil, bag_id: 1)
      expect(ticket).to be_invalid
    end

    it 'is invalid with non-integer bag id' do
      ticket = Ticket.new(locker_id: 1, bag_id: "not an integer")
      expect(ticket).to be_invalid
    end

    it 'is invalid with no bag id' do
      ticket = Ticket.new(locker_id: 1, bag_id: nil)
      expect(ticket).to be_invalid
    end
  end
end
