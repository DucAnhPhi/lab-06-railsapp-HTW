FactoryGirl.define do
SKIP_FACTORIES_WHEN_POPULATING  << :dirkCustomer
SKIP_FACTORIES_WHEN_POPULATING  << :order_with_customer
  factory :madPumpkin, class: Pumpkin do
    name 'Die Madness'
    color 'black'
    size  'XXXXL'
    price '1000000'
  end

  factory :dirkCustomer, class: Customer do
    name 'Dirk'
    discount '0'
    end

  factory :order_with_customer, class: Order do
    association :customer, factory: :dirkCustomer
    placed_on { 2.days.ago}
    status :new
  end


    factory :lineItem, class: LineItem do
      association :pumpkin, factory: :madPumpkin
      association :order, factory: :order_with_customer
      amount 10
  end
end
