# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Category.create([
  { category_name: 'Food Preparation'    },
  { category_name: 'Cooling'     },
  { category_name: 'Ovens'    },
  { category_name: 'Heat panels'   },
  { category_name: 'Catering' }

])
