
User.destroy_all

u1 = User.create!(
    name: 'Anna',
    email: 'ann@gmail.com',
    password: 'chicken',
    admin: false
)
u2 = User.create!(
    name: 'Vador',
    email: 'vador@gmail.com',
    password: 'chicken',
    admin: false
)
u3 = User.create!(
    name: 'Eva',
    email: 'eva@gmail.com',
    password: 'chicken',
    admin: true
)
u4 = User.create!(
    name: 'Mohamad',
    email: 'mohamad@gmail.com',
    password: 'chicken',
    admin: true
)
u5 = User.create!(
    name: 'Justin',
    email: 'justin@gmail.com',
    password: 'chicken',
    admin: true
)

puts "Done! Created #{ User.count } User:"
puts User.pluck( :name).join( ', ' )
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


Flight.destroy_all

f1 = Flight.create! flight: 314, departure_date: '10/23/2022', origin: 'JFK', destination: 'SFO', seats: 10

f2 = Flight.create! flight: 326, departure_date: '10/24/2022', origin: 'JFK', destination: 'LAX', seats: 12

f3 = Flight.create! flight: 156, departure_date: '10/24/2022', origin: 'JFK', destination: 'SFO', seats: 12

f4 = Flight.create! flight: 156, departure_date: '10/22/2022', origin: 'LAX', destination: 'SFO', seats: 15

puts `Created #{Flight.count} flights`


p1.flights << f2 << f3
p2.flights << f1
p3.flights << f4

Reservation.destroy_all

r1 = Reservation.create!(
    user_id: u1.id, 
    flight_id: f1.id,
    seat_number: 'A3'
)

r2 = Reservation.create!(
    user_id: u1.id,
    flight_id: f2.id,
    seat_number: 'B2'
)
r3 = Reservation.create!(
    user_id:    u1.id,
    flight_id:  f3.id,
    seat_number: 'A2'
)
r4 = Reservation.create!(
    user_id: u1.id,
    flight_id: f4.id,
    seat_number: 'A1'
)
r5 = Reservation.create!(
    user_id: u2.id,
    flight_id: f1.id,
    seat_number: 'C1'
)
r6 = Reservation.create!(
    user_id:    u2.id,
    flight_id: f2.id,
    seat_number: 'B3'
)
r7 = Reservation.create!(
    user_id:  u2.id,
    flight_id: f3.id,
    seat_number: 'C3'
)
r8 = Reservation.create!(
    user_id: u3.id,
    flight_id: f4.id,
    seat_number: 'C2'
)
r9 = Reservation.create!(
    user_id: u3.id,
    flight_id: f2.id,
    seat_number: 'B4'
)
r10 = Reservation.create!(
    user_id:    u3.id,
    flight_id:  f3.id,
    seat_number: 'C4'
)
r11 = Reservation.create!(
    user_id:    u4.id,
    flight_id:  f3.id,
    seat_number: 'C1'
)
r12 = Reservation.create!(
    user_id:    u5.id,
    flight_id:  f3.id,
    seat_number: 'A4'
)

puts "Done! Created #{ Reservation.count } User:"

u1.reservations << r1 << r2 << r3 << r4
u2.reservations << r5 << r6 << r7
u3.reservations << r8 << r9 << r10
u4.reservations << r11
u5.reservations << r12

f1.reservations << r1 << r5
f2.reservations << r2 << r6 << r9
f3.reservations << r3 << r7 << r10 << r11
f4.reservations << r4 << r8

puts "User #{u1.name} has Reservations #{u1.reservations.pluck(:id).join(',')}"
puts "Reservation '#{r1.id} belongs to #{u1.name}"

puts "Flight #{f1.id} has Reservations #{u1.reservations.pluck(:id).join(',')}"
puts "Reservation '#{r1.id} belongs to #{f1.id}"