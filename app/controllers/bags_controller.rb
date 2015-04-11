class BagsController < ApplicationController
  def index
    @bags = Bag.all
  end

  def show
    @bag = Bag.find(params[:id])
    @ticket = Ticket.find_by(bag_id: @bag.id)
    @locker = Locker.find(@ticket.locker_id)
  end

  def new
    @bag = Bag.new
  end

  def create
    @bag = Bag.new(size: params[:bag][:size])
    if @bag.save
      p @bag
      @locker = Locker.where(size: @bag.size, empty: true).first
      p @locker
      @locker.current_bag = @bag
      @locker.empty = false
      @locker.save
      p @locker
      @ticket = Ticket.create(locker_id: @locker.id, bag_id: @bag.id)
      p @ticket
      redirect_to "/bags/#{@bag.id}"
    else
      render 'new'
    end
  end

  def edit
    @bag = Bag.find(params[:id])
  end

  def update
    # need to change @locker.current_bag to nil and set empty to true
  end

  def destroy
  end
end
