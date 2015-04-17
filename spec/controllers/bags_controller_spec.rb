require 'rails_helper'
require 'factory_girl_rails'

RSpec.describe BagsController, :type => :controller do

  let!(:bag) { FactoryGirl.build :bag }
  let!(:locker) { FactoryGirl.build :locker }
  let!(:ticket) { FactoryGirl.build :ticket }

  describe "GET index" do
    it "has a 200 status code" do
      get :index
      expect(response.status).to eq(200)
    end
  end


  #   RSpec.describe "Widget management", :type => :request do

  #   it "creates a Widget and redirects to the Widget's page" do
  #     get "/widgets/new"
  #     expect(response).to render_template(:new)

  #     post "/widgets", :widget => {:name => "My Widget"}

  #     expect(response).to redirect_to(assigns(:widget))
  #     follow_redirect!

  #     expect(response).to render_template(:show)
  #     expect(response.body).to include("Widget was successfully created.")
  #   end

  # end

  context '#create' do
    it 'has a 302 status code' do
      post :create, bag: { size: %w(small medium large) }
      p response
      follow_redirect!
      expect(last_response).to redirect_to(assigns(:bag))
      # expect(response.status).to eq(302)
      # this is returning 200
    end
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
