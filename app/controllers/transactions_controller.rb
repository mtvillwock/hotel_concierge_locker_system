class TransactionsController < ApplicationController
  def index
    #@transactions = Transaction.all
    @bag = Bag.new
    @ticket = Ticket.new
  end

  def show
    #@transaction = Transaction.find_by(id: params[:id])
  end

  def new
    #@transaction = Transaction.new
  end

  def create
    # @transaction = Transaction.new(locker_id: params[:locker_id], bag_id: params[:bag_id], ticket_id: params[:ticket_id])
    # if @transaction.save
    #   render json: { success: "transaction ##{@transaction.id} created"}
    # else
    #   render json: { error: "transaction not created"}
    # end
  end

  def edit
    # @transaction = Transaction.find(params[:id])
  end

  def update
    # @transaction = Transaction.find(params[:id])
    # @transaction.update_attributes(params[:transaction])
    # # have ajax send hash of { transaction: { locker_id: lockerId, bag_id: bagId, ticket_id: ticketId}}
    # if @transaction.save
    #   render json: { success: "transaction ##{@transaction.id} updated"}
    # else
    #   render json: { error: "transaction failed to update"}
    # end
  end

  def destroy
    # @transaction = Transaction.find_by(id: params[:id])
    # @transaction.destroy
  end
end
