class ChargesController < ApplicationController
  before_action :set_item
      def new
      end

      def create
  # Amount in cents
    @product = Product.find(params[:id])
    @amount = (@product.price.to_i) *100

    customer = Stripe::Customer.create(
      :email => params[:stripeEmail],
      :source  => params[:stripeToken]
    )

    current_user.stripeid = customer.id
     current_user.save()

    charge = Stripe::Charge.create(
      :customer    => customer.id,
      :amount      => @amount,
      :currency    => 'aud'
    )

    @transaction = Transaction.create(user_id: current_user.id, product_id: @product.id, price: @amount, stripe_transaction_id: charge.id)
    @transaction.save

    redirect_to root_path

      rescue Stripe::CardError => e
        flash[:error] = e.message
        redirect_to new_charge_path
      end

  private
  def set_item
    @product = Product.find(params[:id])
  end
end
