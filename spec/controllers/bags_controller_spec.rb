require 'rails_helper'
require 'factory_girl_rails'

RSpec.describe BagsController, :type => :controller do

  let!(:bag) { FactoryGirl.create :bag }
  let!(:locker) { FactoryGirl.create :locker }
  let!(:ticket) { FactoryGirl.create :ticket }

  # context '#index' do
  #   xit '' do

  #   end

  #   xit '' do

  #   end
  # end

  # context '#show' do
  #   xit '' do

  #   end
  #   xit '' do

  #   end
  # end

  # context '#new' do
  #   xit '' do

  #   end
  #   xit '' do

  #   end
  # end

  context '#create' do
    it 'creates a bag' do
      count = Bag.count
      post(:create, bag: { size: bag.size })
      locker.current_bag = bag
      locker.empty = false
      locker.save
      # ticket
      expect(Bag.count).to be(count + 1)
    end
    it 'redirects user to the /bags/:id #show route' do
      p :bag
      post(:create, bag)
      expect(last_response.status).to eq(302)
    end
    # it 'increments bag count when a bag is created' do
    #   expect{
    #     post(:create, bag: { size: bag.size }, )locker: { size: locker.size }, ticket: { locker_id: locker.id, bag_id: bag.id }
    #   }.to change(Bag, :count).by(1)
    # end


  end

  # context '#edit' do
  #   xit '' do

  #   end
  #   xit '' do

  #   end

  # end

  # context '#update' do
  #   xit '' do

  #   end
  #   xit '' do

  #   end
  # end
end
