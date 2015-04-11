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
      @lockers = Locker.where(size: @bag.size, empty?: true)
      p @lockers
      @lockers.each do |locker|
        @locker = locker
        break @locker.current_bag.nil?
      end
      p @locker
      @locker.current_bag = @bag
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
  end

  def destroy
  end
end
