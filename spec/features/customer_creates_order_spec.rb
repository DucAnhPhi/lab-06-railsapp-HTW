require 'rails_helper'

describe "customer page", :type => :feature do
  before :each do
    @customer = create(:customer)
  end

  it "has a create order link" do
    visit "/customers/#{@customer.id}"
    expect(page).to have_link 'New Order'
  end
end
