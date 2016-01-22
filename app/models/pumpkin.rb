class Pumpkin < ActiveRecord::Base
  has_many :line_items
  has_many :orders, :through => :lineItems
end
