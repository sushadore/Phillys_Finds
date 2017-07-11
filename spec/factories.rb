FactoryGirl.define do
  factory :product do
    name 'Irish Flute'
    description 'Delighfully fluttery'
    price '38.99'
  end

  factory :review do
    author 'ThisGuy'
    content 'Chuck Norris is currently suing NBC, claiming Law and Order are trademarked names for his left and right legs.'
    rating '4'
  end
end
