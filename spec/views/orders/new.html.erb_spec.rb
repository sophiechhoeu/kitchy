require 'rails_helper'

RSpec.describe "orders/new", type: :view do
  before(:each) do
    assign(:order, Order.new(
      :stripe_transaction_id => 1,
      :total_cost => 1,
      :buyer_user_id => 1
    ))
  end

  it "renders new order form" do
    render

    assert_select "form[action=?][method=?]", orders_path, "post" do

      assert_select "input[name=?]", "order[stripe_transaction_id]"

      assert_select "input[name=?]", "order[total_cost]"

      assert_select "input[name=?]", "order[buyer_user_id]"
    end
  end
end
