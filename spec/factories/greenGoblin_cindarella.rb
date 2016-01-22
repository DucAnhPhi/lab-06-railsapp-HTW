FactoryGirl.define do
    factory :greenGoblin, class: Pumpkin do
        name 'Green Goblin'
        color 'blue-green'
        size 'any size'
        price '1964.07'
    end

    factory :cindarella, class: Pumpkin do
        name 'Cindarella'
        color 'orange'
        size 'normal to carriage-size'
        price '2.2'
    end
end
