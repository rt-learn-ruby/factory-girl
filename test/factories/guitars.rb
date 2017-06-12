FactoryGirl.define do
  sequence :inventory_code do |n|
    "GR#{n}"
  end

  factory :guitar do
    description 'Basic Guitar'
    year '2011'
    strings 6
    lefty false
    store_location
    # Using a sequence
    inventory_code { generate :inventory_code }

    # Inherits from the guitar factory
    factory :gibson_sg_lefty do
      description 'Gibson SG'
      year '1997'
      lefty true
      store_location factory: :gibson_showroom
    end

    # Inherits from the guitar factory
    factory :fender_strat do
      description 'Fender Stratocaster'
      year '1970s'
      store_location factory: :main_store
    end
  end
end
