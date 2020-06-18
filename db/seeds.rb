# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."
Artist.destroy_all

puts "Creating artists..."
lisa = { name: "LiSa" }
wanima = { name: "WANIMA" }

[lisa, wanima].each do |attributes|
  artist = Artist.create!(attributes)
  puts "Created #{artist.name}"
end

puts "Finished"
