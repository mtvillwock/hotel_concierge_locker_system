require 'rails_helper'
require 'factory_girl_rails'

RSpec.describe BagsController, :type => :controller do

  let!(:bag) { build(:bag) }
  let!(:locker) { create(:locker) }
  let!(:ticket) { create(:ticket) }

  context '#index' do
    xit '' do

    end

    xit '' do

    end
  end

  context '#show' do
    xit '' do

    end
    xit '' do

    end
  end

  context '#new' do
    xit '' do

    end
    xit '' do

    end
  end

  context '#create' do
    it 'increments bag count when a bag is created' do
      expect {
        post :create, bag: { size: bag.size }
      }.to change{
        bags.count
      }.by(1)
    end
    xit '' do

    end

  end

  context '#edit' do
    xit '' do

    end
    xit '' do

    end

  end

  context '#update' do
    xit '' do

    end
    xit '' do

    end
  end
end
