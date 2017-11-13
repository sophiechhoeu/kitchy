require 'rails_helper'

RSpec.describe "orders/index", type: :view do
  before(:each) do
    assign(:orders, [
      Order.create!(
        :stripe_transaction_id => 2,
        :total_cost => 3,
        :buyer_user_id => 4
      ),
      Order.create!(
        :stripe_transaction_id => 2,
        :total_cost => 3,
        :buyer_user_id => 4
      )
    ])
  end

  it "renders a list of orders" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
  end
end
