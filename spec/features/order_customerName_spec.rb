require 'rails_helper'

describe "order page", :type => :feature do
  before :each do
    @order = create(:order)
  end

  it "has a create order link" do
    visit "/orders/#{@orders.id}"
    expect(page).to have_link 'New Order'
  end
  it "initializes new order correctly" do
    visit "/orders/#{@orders.id}"
    click_link 'New Order'
    fill_in 'Status', with: :new
    click_button 'Create Order'
    order = Order.last
    expect(order.customer).to eq @order
  end
end
