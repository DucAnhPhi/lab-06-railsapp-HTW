FactoryGirl.define do
  factory :delicataPumpkin, class: Pumpkin do
    name 'Delicata'
    color 'orange'
    size  's'
    price '5.8'
  end
  factory :carnivalPumpkin, class: Pumpkin do
    name 'Carnival'
    color 'yellow'
    size  'm'
    price '4.0'
  end
end
