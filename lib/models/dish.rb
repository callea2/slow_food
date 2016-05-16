class Dish
  include DataMapper::Resource

  property :id, Serial
  property :name, String
  property :price, Integer
  property :cathegory, String

end
