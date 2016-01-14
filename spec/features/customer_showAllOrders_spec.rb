require 'rails_helper'

describe "customer page", :type => :feature do
  before :each do
    @customer = create(:customer_with_priced_orders)
    @relatedOrders = Order.where(:customer_id => @customer.id)
  end

  it "shows all related orders to a customer" do
    visit "/orders/#{@customer.id}"
    @relatedOrders.each do |r|
    expect(page).to have_content r.customer_id
    expect(page).to have_content r.placed_on
    expect(page).to have_content r.status
  end
end
end
