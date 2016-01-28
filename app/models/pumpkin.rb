class Pumpkin < ActiveRecord::Base
  has_many :lineItems
  has_many :orders, :through => :lineItems
end
