require 'rails_helper'
require 'factory_girl_rails'

RSpec.describe TicketsController, type: :controller do
  describe "GET #index" do
    it 'populates an ActiveRecord collection of Tickets' do
      tickets = Ticket.all
      get :index
      expect(assigns(:tickets)).to match(tickets)
    end
    it 'renders the :index template' do
      get :index
      expect(response).to render_template :index
    end
  end

  describe 'POST #create' do
    context "with valid attributes" do
      it 'saves the new Ticket in the database' do
        bag = create(:small_bag)
        locker = create(:small_locker)
        valid_attributes = { locker_id: locker.id, bag_id: bag.id }
        ticket_count = Ticket.count
        expect{
          post :create, ticket: valid_attributes
        }.to change{Ticket.count}.by(1)
      end
    end
    context 'with invalid attributes' do
      it 'does not save the new ticket in the database' do
        bag = create(:small_bag)
        locker = create(:small_locker)
        invalid_attributes = { locker_id: "foo", bag_id: "bar" }
        expect{
          post :create, ticket: invalid_attributes
        }.to_not change{Ticket.count}
      end
    end
  end

  describe "DELETE #destroy" do
    it "deletes the Ticket from the database" do
      bag = create(:small_bag)
      locker = create(:small_locker)
      valid_attributes = { locker_id: locker.id, bag_id: bag.id }
      ticket = Ticket.create! valid_attributes
      expect {
        delete :destroy, {:id => ticket.id}
      }.to change(Ticket, :count).by(-1)
    end
  end
end
