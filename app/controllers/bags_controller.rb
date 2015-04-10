class BagsController < ApplicationController
  def index
  end

  def show
    @bag = Bag.find(params[:id])
  end

  def new
    @bag = Bag.new
  end

  def create
    p '*' * 80
    p params
    @bag = Bag.new(size: params[:bag][:size])
    p @bag
    if @bag.save
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
