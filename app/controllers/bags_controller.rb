class BagsController < ApplicationController
  def index
    @bags =  Bag.all
  end

  def show
    @bag = Bag.find(params[:id])
  end

  def new
    @bag = Bag.new
  end

  def create
    @bag = Bag.new(size: params[:bag][:size])
    if @bag.save
      render json: { success: "bag ##{bag.id} created"}
    else
      render json: { error: "bag requires size"}
    end
  end

  def edit
    @bag = Bag.find(params[:id])
  end

  def update
    @bag = Bag.find(params[:id])
    if @ticket.save
      render json: { success: "bag ##{bag.id} updated"}
    else
      render json: { error: "bag failed to update"}
    end
  end

  def destroy
    @bag = Bag.find(params[:id])
    @bag.destroy
  end
end
