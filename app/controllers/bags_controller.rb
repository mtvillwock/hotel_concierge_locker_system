class BagsController < ApplicationController
  def index
    @lockers_with_bags = Locker.where(empty: false)
    @bags_in_lockers = []
    @lockers_with_bags.each do |locker|
      @bags << Bag.find(locker.ticket.bag_id)
    end
    @bags_in_lockers
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
      @locker = Locker.where(size: @bag.size, empty: true).first
      @locker.current_bag = @bag
      @locker.empty = false
      @locker.save
      @ticket = Ticket.create(locker_id: @locker.id, bag_id: @bag.id)
      redirect_to "/bags/#{@bag.id}"
    else
      render 'new'
    end
  end

  def edit
    @bag = Bag.find(params[:id])
  end

  def update
    @bag = Bag.find(params[:id])
    @ticket = Ticket.find_by(bag_id: @bag.id)
    @locker = Locker.find_by(id: @ticket.locker_id)
    @locker.current_bag = nil
    @locker.empty = true
    @locker.save
    @ticket.destroy
  end

  def destroy
  end
end
