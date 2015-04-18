require 'rails_helper'
require 'factory_girl_rails'

RSpec.describe BagsController, :type => :controller do

  # let!(:bag) { FactoryGirl.build :bag }
  # let!(:locker) { FactoryGirl.build :locker }
  # let!(:ticket) { FactoryGirl.build :ticket }

  describe "GET #index" do
    it "has a 200 status code" do
      get :index
      expect(response.status).to eq(200)
    end

    it 'displays all bags currently in lockers'
  end

  describe 'GET #show' do
    it 'assigns the requested bag to @bag'
    it 'renders the :show template'
  end

  describe 'GET #new' do
    it 'assigns a new Bag to @bag'
    it 'renders the :new template'
  end

  describe 'GET #edit' do
    it 'assigns the requested bag to @bag'
    it 'renders the :edit template'
  end

  describe 'POST #create' do
    context "with valid attributes" do
      it 'saves the new bag in the database' do
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

      it "redirects to bags#show" do
        size = %w(small medium large).sample
        # should this be broken out to cover each size explicitly?
        post :create, bag: { size: size }
        expect(response).to redirect_to(assigns(:bag))
        # expect(response.status).to eq(302)
        # this is returning 200
      end
    end
    context 'with invalid attributes' do
      it 'does not save the new bag in the database'
      it 're-renders the :new template'
    end
  end

  describe 'PATCH #update'
    context "with valid attributes"
      it "updates the bag status" # this shouldn't be a route
      it "redirects to the bag"
    context "with invalid attributes"
      it "does not update the contact"
      it "re-renders the :edit template"
    end
  describe "DELETE #destroy"
    it "deletes the bag from the database"
    it "redirects to bags#index"
  end
end
