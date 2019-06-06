# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
User.destroy_all
Order.destroy_all
Product.destroy_all
Address.destroy_all

puts 'Creating users...'
users_attributes = [
  {
    username: 'Tom',
    email: 'tom@somehting.com',
    password: '123456',
  }]

users = User.create!(users_attributes)
p users
puts 'Creating users...'

products_attributes = [
{
  name: 'Musharabieh',
  retail_price: '4100',
  category: 'Rug',
  manufacturer: 'Someone',
  sourcing_price: '1200',
  height: '2200',
  width: '130',
  description: 'BLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.',
  country: 'Iran',
  image: 'placeholder3.jpg'
},
{
  name: 'Ishalah',
  retail_price: '2200',
  category: 'Rug',
  manufacturer: 'Hisham',
  sourcing_price: '800',
  height: '780',
  width: '440',
  description: 'BLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.',
  country: 'Turkey',
  image: 'placeholder1.jpg'
},
{
  name: 'Khalassemen',
  retail_price: '7800',
  category: 'Rug',
  manufacturer: 'Ahmed',
  sourcing_price: '1200',
  height: '880',
  width: '753',
  description: 'BLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.',
  country: 'Morocco',
  image: 'placeholder2.jpg'
},
{
  name: 'Beni Ouhrain',
  retail_price: '12400',
  category: 'Rug',
  manufacturer: 'Bibi',
  sourcing_price: '4200',
  height: '780',
  width: '560',
  description: 'BLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.',
  country: 'Oman',
  image: 'placeholder4.jpg'
},
{
  name: 'Sharjah Rani',
  retail_price: '13400',
  category: 'Rug',
  manufacturer: 'Mohammed',
  sourcing_price: '3200',
  height: '1480',
  width: '560',
  description: 'BLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.',
  country: 'Morocco',
  image: 'placeholder5.jpg'
},
{
  name: 'Rehmna',
  retail_price: '12400',
  category: 'Rug',
  manufacturer: 'Fahmi',
  sourcing_price: '4200',
  height: '299',
  width: '190',
  description: 'BLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.',
  country: 'Morocco',
  image: 'placeholder6.png'
},
]

products = Product.create!(products_attributes)
p products
puts 'Creating products...'

addresses_attributes = [
  {
    street_name: 'Street 1',
    postcode: '89786',
    street_number: '118',
    city: 'Amsterdam',
    country: 'Netherlands'
  }
]

addresses = Address.create!(addresses_attributes)
p addresses
puts 'Creating addresses...'


orders_attributes = [
  {
    purchase_date: '01/01/2019',
    status: 'shipped',
    user_id: User.first.id,
    product_id: Product.first.id,
    address_id: Address.first.id,
  }
]

orders = Order.create!(orders_attributes)
p orders
puts 'Creating orders...'














