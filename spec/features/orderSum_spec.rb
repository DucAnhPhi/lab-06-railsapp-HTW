require 'rails_helper'

describe "customer page", :type => :feature do
  before :each do
    @customer = create(:customer_with_priced_orders)
    @relatedOrders = Order.where(:customer_id => @customer.id)
  end

  it "shows total price of all orders related to a customer" do
    visit "/customers/#{@customer.id}"

    expect(page).to have_content @relatedOrders.sum("price")

end
end
