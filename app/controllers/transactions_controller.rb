class TransactionsController < ApplicationController
  def index
    @transactions = Transaction.where(user_id: current_user.id)
    @products =  Product.where(user_id: current_user.id)
  end





end
