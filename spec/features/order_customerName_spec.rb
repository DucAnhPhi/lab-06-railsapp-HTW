require 'rails_helper'

describe "order page", :type => :feature do
  before :each do
    @order = create(:order1)
  end

  it "shows the right name to customer_id" do
    visit "/orders/#{@order.id}"
    expect(page).to have_content @order.customer.name
  end
end
