
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


f1 = Flight.create! flight: 314, departure_date: '10/23/2022', origin: 'JFK', destination: 'SFO', seats: 10, plane_id: p2.id

f2 = Flight.create! flight: 326, departure_date: '10/24/2022', origin: 'JFK', destination: 'LAX', seats: 12, plane_id: p1.id

f3 = Flight.create! flight: 156, departure_date: '10/24/2022', origin: 'JFK', destination: 'SFO', seats: 12, plane_id: p1.id

f4 = Flight.create! flight: 154, departure_date: '10/22/2022', origin: 'LAX', destination: 'SFO', seats: 15, plane_id: p3.id

puts "Created #{Flight.count} flights"


# MAIN FOCUS is to try to perform a reservation on the REACT frontend framework.
# familiarize ourself with group work and using react.
# OMG REACT

# RAILS PART
# JUSTIN
#  - Make a json page for planes
#  - Put in associations

# EVA 
# - Make json page flights & a simple show page

# MO
# - Make json page for reservations 

# ONCE RAILS IS DONE, JUMP INTO REACT

# REACT PART
# MO 
# - Do the search part