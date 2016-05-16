Given(/^the following cathegories exist$/) do |table|
  table.hashes.each do |hash|
    Cathegory.create ! (hash)
  end
end

Given(/^the following dishes exist$/) do |table|
  table.hashes.each do |dish|
    Dish.create(cathegory: dish[:cathegory], name: dish[:name], price: dish[:price])
  end
end
