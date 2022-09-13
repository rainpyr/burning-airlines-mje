
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