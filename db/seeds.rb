# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# Sale.destroy_all
# Employee.destroy_all
# SalesA.destroy_all
# SalesB.destroy_all
# SalesC.destroy_all
# Category.destroy_all
# Product.destroy_all

p "start seeding"
# destroy_all
user1 = User.create(name: "logan", email: "example@gmail.com", username: "logan", role:"admin", password: "1234", password_confirmation: "1234")
# salesa=SalesA.create!([
#      {
#         product:"iphone12",
#         date:"2023-03-4",
#         price:1000,
#         employee:"cate",
#         quantity:1,
#         status:"completed"

#     },
#       {
#         product:"iphone12",
#         date:"2023-03-4",
#         price:1000,
#         employee:"cate",
#         quantity:1,
#         status:"completed"

#     },
#       {
#         product:"iphone12",
#         date:"2023-03-4",
#         price:1000,
#         employee:"cate",
#         quantity:1,
#         status:"completed"

#     },
#       {
#         product:"iphone12",
#         date:"2023-03-4",
#         price:1000,
#         employee:"cate",
#         quantity:1,
#         status:"completed"

#     },
#       {
#         product:"iphone12",
#         date:"2023-03-4",
#         price:1000,
#         employee:"cate",
#         quantity:1,
#         status:"completed"

#     }
# ])
# salesB=SalesB.create!([
#      {
#         product:"iphone12",
#         date:"2023-03-4",
#         price:1000,
#         employee:"cate",
#         quantity:1,
#         status:"completed"

#     },
#       {
#         product:"iphone12",
#         date:"2023-03-4",
#         price:1000,
#         employee:"cate",
#         quantity:1,
#         status:"completed"

#     },
#       {
#         product:"iphone12",
#         date:"2023-03-4",
#         price:1000,
#         employee:"cate",
#         quantity:1,
#         status:"completed"

#     },
#       {
#         product:"iphone12",
#         date:"2023-03-4",
#         price:1000,
#         employee:"cate",
#         quantity:1,
#         status:"completed"

#     },
#       {
#         product:"iphone12",
#         date:"2023-03-4",
#         price:1000,
#         employee:"cate",
#         quantity:1,
#         status:"completed"

#     }
# ])

# salespipeline=SalesPipeline.create!([
#      {
#         product:"iphone12",
#         date:"2023-03-4",
#         price:1000,
#         employee:"cate",
#         quantity:1,
#         status:"completed"

#     },
#       {
#         product:"iphone12",
#         date:"2023-03-4",
#         price:1000,
#         employee:"cate",
#         quantity:1,
#         status:"completed"

#     },
#       {
#         product:"iphone12",
#         date:"2023-03-4",
#         price:1000,
#         employee:"cate",
#         quantity:1,
#         status:"completed"

#     },
#       {
#         product:"iphone12",
#         date:"2023-03-4",
#         price:1000,
#         employee:"cate",
#         quantity:1,
#         status:"completed"

#     },
#       {
#         product:"iphone12",
#         date:"2023-03-4",
#         price:1000,
#         employee:"cate",
#         quantity:1,
#         status:"completed"

#     }
# ])

# salesC=SalesC.create!([
#     {
#         product:"iphone12",
#         date:"2023-03-4",
#         price:1000,
#         employee:"cate",
#         quantity:1,
#         status:"completed"

#     },
#       {
#         product:"iphone12",
#         date:"2023-03-4",
#         price:1000,
#         employee:"cate",
#         quantity:1,
#         status:"completed"

#     },
#       {
#         product:"iphone12",
#         date:"2023-03-4",
#         price:1000,
#         employee:"cate",
#         quantity:1,
#         status:"completed"

#     },
#       {
#         product:"iphone12",
#         date:"2023-03-4",
#         price:1000,
#         employee:"cate",
#         quantity:1,
#         status:"completed"

#     },
#       {
#         product:"iphone12",
#         date:"2023-03-4",
#         price:1000,
#         employee:"cate",
#         quantity:1,
#         status:"completed"

#     }
    
# ])
employee= Employee.create!([
   { 
    name:"Evan",
    contact: 254794883161,
    shop:"gateA"
},
   { 
    name:"Naomy",
    contact: 254710306057,
    shop:"Containers"
},
   { 
    name:"Rachael",
    contact: 254719507952,
    shop:"GateB"
},
{ 
    name:"Elijah",
    contact: 254711612150,
    shop:"Containers"
},
{ 
    name:"Peter",
    contact: 254742504325,
    shop:"GateB"
},
{ 
    name:"Kirui",
    contact: 254724827133,
    shop:"Repairs"
},
])
# def create_products_and_categories
  # Category.destroy_all
  # Product.destroy_all

  phones = Category.create(name: "Phones")
  accessories = Category.create(name: "Accessories")
  chargers = Category.create(name: "Chargers")
  sales = Category.create(name: "UpdatedSale")

  # Product.create([
  #   {
  #     name: "iphone",
  #     shop:"gateA",
  #     quantity: 10,
  #     price: 10000,
  #     category: phones
  #   },
  #   {
  #     name: "iphone",
  #     shop:"gateC",
  #     quantity: 10,
  #     price: 10000,
  #     category: phones
  #   },
  #   {
  #     name: "iphone",
  #     shop:"pipeline",
  #     quantity: 10,
  #     price: 10000,
  #     category: phones
  #   },
  #   {
  #     name: "iphone",
  #     shop:"pipeline",
  #     quantity: 10,
  #     price: 10000,
  #     category: phones
  #   },
  #   {
  #     name: "sumsung",
  #     shop:"gateB",
  #     quantity: 10,
  #     price: 10000,
  #     category: phones
  #   },
  #   {
  #     name: "cable",
  #     shop:"gateB",
  #     quantity: 10,
  #     price: 10000,
  #     category: accessories
  #   },
  #   {
  #     name: "headphone",
  #     shop:"gateB",
  #     quantity: 10,
  #     price: 10000,
  #     category: accessories
  #   },
  #   {
  #     name: "charger",
  #     shop:"gateB",
  #     quantity: 10,
  #     price: 10000,
  #     category: chargers
  #   },
  #   {
  #     name: "charger",
  #     shop:"gateB",
  #     quantity: 10,
  #     price: 10000,
  #     category: phones
  #   }
  # ])
# end

p "finished seeding"
