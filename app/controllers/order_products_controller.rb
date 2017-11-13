class OrderProductsController < ApplicationController
  def create
    @order = current_order
    @order_product = @order.order_products.new(order_product_params)
    @order.save
    session[:order_id] = @order.id
  end

  private
  def order_product_params
    params.require(:order_product).permit(:product_id, :quantity)
  end
end
