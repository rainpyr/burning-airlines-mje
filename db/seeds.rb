# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

print "Creating planes..."

Plane.destroy_all

p1 = Plane.create!(
    name: "Eva",
    rows: 3,
    cols: 4
)

p2 = Plane.create!(
    name: "Justin",
    rows: 2,
    cols: 5
)

p3 = Plane.create!(
    name: "Moe",
    rows: 3,
    cols: 5
)

puts "created #{Plane.count} planes"