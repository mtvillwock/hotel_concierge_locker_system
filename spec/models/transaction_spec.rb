require 'rails_helper'

RSpec.describe Transaction, type: :model do
  describe Transaction do
    context 'associations' do
      it { should have_one(:bag) }
      it { should have_one(:locker) }
      it { should have_one(:ticket) }
    end

    context 'valid Transaction' do
      expect(build(:valid_transaction)).to be_valid
    end

    context 'invalid Transaction' do
      it 'has no bag' do
        expect(build(:transaction_without_bag)).to be_invalid
      end
      it 'has no locker' do
        expect(build(:transaction_without_locker)).to be_invalid
      end
      it 'has no ticket' do
        expect(build(:transaction_without_ticket)).to be_invalid
      end
    end
  end
end
