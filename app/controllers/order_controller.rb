class OrderController < ApplicationController
    def new
      @order = Order.new
    end
end
