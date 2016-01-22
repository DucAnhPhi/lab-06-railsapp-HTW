FactoryGirl.define do
  factory :aladdinMiniTurban, class: Pumpkin do
    name 'Aladdin Mini Turban'
    color 'solid orange, not striped'
    size  's'
    price '3.3'
  end
  factory :aladdin, class: Pumpkin do
    name 'Aladdin'
    color 'orange'
    size  'm'
    price '6.6'
  end
end
