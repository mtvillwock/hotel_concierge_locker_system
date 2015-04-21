class TicketsController < ApplicationController
  def index
    @tickets = Ticket.all
    @ticket = Ticket.new
    @bag = Bag.new
  end

  def show
  end

  def new
    @ticket = Ticket.new
  end

  def create
    # this initiates a bag, finds a locker, returns a ticket
    @bag = Bag.new(size: params[:bag][:size])
    if @bag.save
      @locker = Locker.where(size: @bag.size, empty: true).first
      @locker.current_bag = @bag
      @locker.empty = false
      @locker.save
      @ticket = Ticket.create(locker_id: @locker.id, bag_id: @bag.id)
      # render id to append div client-side
      render json: { ticket_id: @ticket.id, bag_id: @bag.id, locker_id: @locker.id }
    else
      render 'new'
    end
  end

  def edit
    @ticket = Ticket.find(params[:id])
  end

  def update
  end

  def destroy
    @ticket = Ticket.find(params[:id])
    @bag = Bag.find(@ticket.bag_id)
    @locker = Locker.find_by(id: @ticket.locker_id)
    @locker.current_bag = nil
    @locker.empty = true
    @locker.save
    ticket_id = @ticket.id
    if @ticket.destroy
      render json: { ticket_id: ticket_id }
    else
      render json: { error: "ticket not destroyed"}
    end
  end
end
