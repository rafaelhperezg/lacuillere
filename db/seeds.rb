# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Restaurant.destroy_all
restaurants_attributes = [
  {
    name:         "Epicure au Bristol",
    address:      "112 rue du Fg St-Honoré 75008 Paris",
    category:     "french",
    phone_number: "0983456378"
  },
  {
    name:         "La truffière",
    address:      "4 rue Blainville 75005 Paris",
    category:     "belgian",
    phone_number: "0683456378"
  },
  {
    name:         "Le pré catelan",
    address:      "route de Suresnes 75016 Paris",
    category:     "italian",
    phone_number: "0983456378"
  },
  {
    name:         "Super sushi",
    address:      "Bastille 75000 Paris",
    category:     "japanese",
    phone_number: "0882996378"
  },
  {
    name:         "Chez Phu",
    address:      "Saint Paul 75016 Paris",
    category:     "chinese",
    phone_number: "02345678"
  }
]

restaurants_attributes.each { |params| Restaurant.create!(params) }
