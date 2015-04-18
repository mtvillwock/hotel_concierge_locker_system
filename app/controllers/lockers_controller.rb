class LockersController < ApplicationController
  def index
    @lockers = Locker.all
  end

  def show
    @locker = Locker.find_by(id: params[:id])
  end

  def new
    @locker = Locker.new
  end

  def create
    @locker = Locker.new(size: params[:size])
    if @locker.save
      render json: { success: "locker ##{locker.id} size #{locker.size} created"}
    else
      render json: { error: "locker requires size"}
    end
  end

  def edit
    @locker = Locker.find(params[:id])
  end

  def update
    @locker = Locker.find(params[:id])
    if @locker.save
      render json: { success: "locker ##{locker.id} updated"}
    else
      render json: { error: "locker failed to update"}
    end
  end

  def destroy
    @locker = Locker.find_by(id: params[:id])
    @locker.destroy
  end
end
