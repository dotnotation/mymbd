# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
count = 0
users = 10
movies = 200
puts "Seeding User Data"
puts "-----------------"
users.times do
    system('clear')
    puts "seeding User Data"
    puts "-----------------"
    count += 1
    puts "#{count/users.to_f*100}%"
    password = Faker::Internet.password
    user = User.new(username: Faker::Internet.username, password: password)
    user.save
end

count = 0

movies.times do 
    system('clear')
    puts "Seeding Movie Data"
    puts "-----------------"
    count += 1
    puts "#{count/movies.to_f*100}%"
    Movie.create(title: Faker::Movie.title, description: Faker::Lorem.paragraph_by_chars(number: 255), released_date: (0...365).to_a.sample.days.ago)
end

puts "------------"
puts "User Data: 100%"
puts "Movie Data: 100%"
puts "Data Successfully Seeded!"
puts "-------------"