FactoryGirl.define do
  factory :tuto, class: Pumpkin do
    name 'tuto'
    color 'green'
    size  'm'
    price '75.6'
  end
  factory :purpleHaze, class: Pumpkin do
    name 'purple Haze'
    color 'purple'
    size  'XL'
    price '357.5'
  end
end
