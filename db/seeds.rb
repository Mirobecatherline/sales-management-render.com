# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Sale.destroy_all
Employee.destroy_all
SalesA.destroy_all
SalesB.destroy_all
SalesC.destroy_all

p "start seeding"

salesa=SalesA.create!([
     {
        product:"iphone12",
        date:"2023-03-4",
        price:1000,
        employee:"cate",
        status:"completed"

    },
      {
        product:"iphone12",
        date:"2023-03-4",
        price:1000,
        employee:"cate",
        status:"completed"

    },
      {
        product:"iphone12",
        date:"2023-03-4",
        price:1000,
        employee:"cate",
        status:"completed"

    },
      {
        product:"iphone12",
        date:"2023-03-4",
        price:1000,
        employee:"cate",
        status:"completed"

    },
      {
        product:"iphone12",
        date:"2023-03-4",
        price:1000,
        employee:"cate",
        status:"completed"

    }
])
salesB=SalesB.create!([
     {
        product:"iphone12",
        date:"2023-03-4",
        price:1000,
        employee:"cate",
        status:"completed"

    },
      {
        product:"iphone12",
        date:"2023-03-4",
        price:1000,
        employee:"cate",
        status:"completed"

    },
      {
        product:"iphone12",
        date:"2023-03-4",
        price:1000,
        employee:"cate",
        status:"completed"

    },
      {
        product:"iphone12",
        date:"2023-03-4",
        price:1000,
        employee:"cate",
        status:"completed"

    },
      {
        product:"iphone12",
        date:"2023-03-4",
        price:1000,
        employee:"cate",
        status:"completed"

    }
])
salesC=SalesC.create!([
    {
        product:"iphone12",
        date:"2023-03-4",
        price:1000,
        employee:"cate",
        status:"completed"

    },
      {
        product:"iphone12",
        date:"2023-03-4",
        price:1000,
        employee:"cate",
        status:"completed"

    },
      {
        product:"iphone12",
        date:"2023-03-4",
        price:1000,
        employee:"cate",
        status:"completed"

    },
      {
        product:"iphone12",
        date:"2023-03-4",
        price:1000,
        employee:"cate",
        status:"completed"

    },
      {
        product:"iphone12",
        date:"2023-03-4",
        price:1000,
        employee:"cate",
        status:"completed"

    }
    
])
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
p "finished seeding"
