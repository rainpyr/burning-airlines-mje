

Flight.destroy_all

f1 = Flight.create! flight: 314, departure_date: '10/23/2022', origin: 'JFK', destination: 'SFO', seats: 10

f2 = Flight.create! flight: 326, departure_date: '10/24/2022', origin: 'JFK', destination: 'LAX', seats: 12

f3 = Flight.create! flight: 156, departure_date: '10/24/2022', origin: 'JFK', destination: 'SFO', seats: 12

f4 = Flight.create! flight: 156, departure_date: '10/22/2022', origin: 'LAX', destination: 'SFO', seats: 15

puts `Created #{Flight.count} flights`


# p1.flights << f2 << f3
# p2.flights << f1
# p3.flights << f4