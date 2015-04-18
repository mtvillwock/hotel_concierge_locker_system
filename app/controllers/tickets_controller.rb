class TicketsController < ApplicationController
  def index
    @tickets = Ticket.all
  end

  def show
    @ticket = Ticket.find_by(id: params[:id])
  end

  def new
    @ticket = Ticket.new
  end

  def create
      @ticket = Ticket.new(locker_id: @locker.id, bag_id: @bag.id)
    if @ticket.save
      render json: { success: "ticket ##{ticket.id} created"}
    else
      render json: { error: "ticket requires locker and bag"}
    end
  end

  def edit
    @ticket = Ticket.find(params[:id])
  end

  def update
    @ticket = Ticket.find(params[:id])
    if @ticket.save
      render json: { success: "ticket ##{ticket.id} updated"}
    else
      render json: { error: "ticket failed to update"}
    end
  end

  def destroy
    @ticket = Ticket.find_by(id: params[:id])
    @ticket.destroy
  end
end
