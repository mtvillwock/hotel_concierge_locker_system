require 'rails_helper'
require 'factory_girl_rails'

RSpec.describe LockersController, type: :controller do
  describe "GET #index" do
    it "has a 200 status code" do
      get :index
      expect(response.status).to eq(200)
    end

    it 'displays all Lockers'
  end

  describe 'GET #show' do
    it 'assigns the requested Locker to @locker'
    it 'renders the :show template'
  end

  describe 'GET #new' do
    it 'assigns a new Locker to @locker'
    it 'renders the :new template'
  end

  describe 'GET #edit' do
    it 'assigns the requested Locker to @locker'
    it 'renders the :edit template'
  end

  describe 'POST #create' do
    context "with valid attributes" do
      it 'saves the new Locker in the database' do
        # Is there a proper way to extract this into multiple tests?
        locker = Locker.new
        locker.current_bag = bag
        locker.empty = false
        locker.save
      end

      it "redirects to lockers#show" do
        size = %w(small medium large).sample
        # should this be broken out to cover each size explicitly?
        post :create, locker: { size: size }
        expect(response).to redirect_to(assigns(:locker))
        # expect(response.status).to eq(302)
        # this is returning 200
      end
    end
    context 'with invalid attributes' do
      it 'does not save the new Locker in the database'
      it 're-renders the :new template'
    end
  end

  describe 'PATCH #update'
    context "with valid attributes"
      it "updates the Locker status" # this shouldn't be a route
      it "redirects to the Locker"
    end
    context "with invalid attributes"
      it "does not update the Locker"
      it "re-renders the :edit template"
    end
  end
  describe "DELETE #destroy"
    it "deletes the Locker from the database"
    it "redirects to lockers#index"
  end
end
