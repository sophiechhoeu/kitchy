require 'rails_helper'

RSpec.describe "orders/edit", type: :view do
  before(:each) do
    @order = assign(:order, Order.create!(
      :stripe_transaction_id => 1,
      :total_cost => 1,
      :buyer_user_id => 1
    ))
  end

  it "renders the edit order form" do
    render

    assert_select "form[action=?][method=?]", order_path(@order), "post" do

      assert_select "input[name=?]", "order[stripe_transaction_id]"

      assert_select "input[name=?]", "order[total_cost]"

      assert_select "input[name=?]", "order[buyer_user_id]"
    end
  end
end
