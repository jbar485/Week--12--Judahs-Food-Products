FactoryBot.define do
  factory(:product) do
    name {'Milk'}
    cost { 4.50 }
    country_of_origin { 'usa' }
    zip { "98642" }
  end

  factory(:review) do
    author {'Gideon Barton'}
    content_body {'This milk was super sour and a waste of my money'}
    rating { 1 }
  end
end
