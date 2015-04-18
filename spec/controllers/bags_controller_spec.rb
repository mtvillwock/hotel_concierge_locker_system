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

    it 'displays all Bags' # currently in lockers?
  end

  describe 'GET #show' do
    it 'assigns the requested Bag to @bag' do
      size = %w(small medium large).sample
      bag = create(:bag, {size: size} )
      get :show, id: bag
      expect(assigns(:bag)).to eq bag
    end
    it 'renders the :show template'
  end

  describe 'GET #new' do
    it 'assigns a new Bag to @bag'
    it 'renders the :new template'
  end

  describe 'GET #edit' do
    it 'assigns the requested Bag to @bag'
    it 'renders the :edit template'
  end

  describe 'POST #create' do
    context "with valid attributes" do
      it 'saves the new Bag in the database' do
        # Is there a proper way to extract this into multiple tests?
        count = Bag.count
        post(:create, bag: { size: bag.size })
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
      it 'does not save the new Bag in the database'
      it 're-renders the :new template'
    end
  end

  describe 'PATCH #update' do
    context "with valid attributes" do
      it "updates the Bag status" # this shouldn't be a route
      it "redirects to the Bag"
    end
    context "with invalid attributes" do
      it "does not update the Bag"
      it "re-renders the :edit template"
    end
  end

  describe "DELETE #destroy" do
    it "deletes the Bag from the database"
    it "redirects to bags#index"
  end
end
