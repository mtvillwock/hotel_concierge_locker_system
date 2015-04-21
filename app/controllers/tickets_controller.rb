class TicketsController < ApplicationController
  def index
    @tickets = Ticket.all
    @ticket = Ticket.new
    @bag = Bag.new
  end

  def show
    @ticket = Ticket.find_by(id: params[:id])
  end

  def new
    @ticket = Ticket.new
  end

  def create
    # this initiates a bag, finds a locker, returns a ticket
    p "create route"
    p params
    @bag = Bag.new(size: params[:bag][:size])
    if @bag.save
      @locker = Locker.where(size: @bag.size, empty: true).first
      @locker.current_bag = @bag
      @locker.empty = false
      @locker.save
      @ticket = Ticket.create(locker_id: @locker.id, bag_id: @bag.id)
      # render json: { success: "Ticket ##{@ticket.id} created, Bag #{@bag.id} stored in Locker #{@locker.id}"}
      # redirect_to "/tickets/#{@ticket.id}"
      redirect_to 'index'
    else
      render 'new'
    end
  end

  def edit
    @ticket = Ticket.find(params[:id])
  end

  def update
    p "update"
    p params
    @ticket = Ticket.find_by(params[:id])
    @bag = Bag.find(@ticket.bag_id)
    @locker = Locker.find_by(id: @ticket.locker_id)
    @locker.current_bag = nil
    @locker.empty = true
    @locker.save
    if @ticket.destroy
      redirect_to 'index'
    else
      render 'edit'
    end
  end

  def destroy
  end
end
