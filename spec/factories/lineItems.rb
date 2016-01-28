# SKIP_FACTORIES_WHEN_POPULATING ||= []
# SKIP_FACTORIES_WHEN_POPULATING << :line_item1
  FactoryGirl.define do

  factory :dirkCustomer, class: Customer do
    name 'Dirk'
    discount '0'
    end

  factory :orderTest, class: Order do
    association :customer, factory: :dirkCustomer
    placed_on { 2.days.ago}
    status :new
    end

  factory :madPumpkin, class: Pumpkin do
    name 'Die Madness'
    color 'black'
    size  'XXXXL'
    price '1000000'
  end

  # factory :dirkCustomer_with_order, parent: :dirkCustomer do
  #   after(:create) do |customer|
  #     create(:orderTest, customer: customer)
  #   end
  # end

  factory :line_item1, class: Line_Item do
    association :pumpkin, factory: :madPumpkin
    association :order, factory: :orderTest
    amount '10'
    end

#   factory :order_with_line_items, parent: :dirkCustomer_with_order do
#     transient do
#       line_items_count 5
#     end
#     after(:create) do |order, evaluator|
#       create_list(:line_item1, evaluator.line_items_count, order: order)
#     end
#   end
#
 end
