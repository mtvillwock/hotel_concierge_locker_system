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
    @bag = Bag.new(params[:size])
    if @bag.save
      redirect_to "/bags/#{@bag.id}/show"
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
