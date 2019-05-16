
require 'open-uri'
require 'json'
url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
user_serialized = open(url).read
drinks = JSON.parse(user_serialized)

array = []
drinks['drinks'].map do |drink|
  a = drink.values
  a.each do |b|
    array << b.strip
  end
end
Cocktail.create([{ name: 'brazilian tea'},
{ name: 'chinese fireface' },
{ name: 'the fuck you cocktail' },
{ name: 'codemasters 10pm' },
{ name: 'canadian handjob' }])
array.each do |drink|
  Ingredient.create([{ name: drink }])
end

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
