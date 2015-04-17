require 'rails_helper'
require 'factory_girl_rails'

RSpec.describe BagsController, :type => :controller do

  let!(:bag) { FactoryGirl.build :bag }
  let!(:locker) { FactoryGirl.build :locker }
  let!(:ticket) { FactoryGirl.build :ticket }

  context '#create' do
    it 'creates a bag, stores it in a locker, and creates a ticket' do
      # Is there a proper way to extract this into multiple tests?
      p bag
      p locker
      p ticket
      count = Bag.count
      post(:create, bag: { size: bag.size })
      locker = Locker.new
      locker.current_bag = bag
      locker.empty = false
      locker.save
      ticket = Ticket.new(locker_id: locker.id, bag_id: bag.id)
      p bag
      p locker
      p ticket
      expect(Bag.count).to be(count + 1)
    end
    # it 'redirects user to the /bags/:id #show route' do
      # response = post(:create, bag: { size: bag.size })
      # p response
      # expect(response).to redirect_to("/bags/#{bag.id}")
    # end
  end
end
