class Customer < ActiveRecord::Base
  has_many :orders
  has_many :lineItems, :through => :orders
end
