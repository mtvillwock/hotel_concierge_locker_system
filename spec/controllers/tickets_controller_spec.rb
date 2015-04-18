require 'rails_helper'
require 'factory_girl_rails'

RSpec.describe TicketsController, type: :controller do
  describe "GET #index" do
    it "has a 200 status code" do
      get :index
      expect(response.status).to eq(200)
    end

    it 'displays all Tickets'
  end

  describe 'GET #show' do
    it 'assigns the requested Ticket to @ticket'
    it 'renders the :show template'
  end

  describe 'GET #new' do
    it 'assigns a new Ticket to @ticket'
    it 'renders the :new template'
  end

  describe 'GET #edit' do
    it 'assigns the requested Ticket to @ticket'
    it 'renders the :edit template'
  end

  describe 'POST #create' do
    context "with valid attributes" do
      xit 'saves the new Ticket in the database' do
        # Is there a proper way to extract this into multiple tests?

        # ticket = Ticket.new(locker_id: , bag_id: )
        # ticket.save
      end

      xit "redirects to tickets#show" do
        # post :create, ticket: { locker_id: , bag_id: }
        # expect(response).to redirect_to(assigns(:ticket))
        # expect(response.status).to eq(302)
        # this is returning 200
      end
    end
    context 'with invalid attributes' do
      it 'does not save the new ticket in the database'
      it 're-renders the :new template'
    end
  end

  describe 'PATCH #update'
    context "with valid attributes"
      it "updates the Ticket status" # this shouldn't be a route
      it "redirects to the Ticket"
    end
    context "with invalid attributes"
      it "does not update the Ticket"
      it "re-renders the :edit template"
    end
  end
  describe "DELETE #destroy"
    it "deletes the Ticket from the database"
    it "redirects to tickets#index"
  end
end
