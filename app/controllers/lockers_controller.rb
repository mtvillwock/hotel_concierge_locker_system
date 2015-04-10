class LockersController < ApplicationController

  def index
    @lockers = Locker.all
  end


  def store_bag
  end

  def retrieve_bag
  end
end
