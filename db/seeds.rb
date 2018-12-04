# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# User's seeding

users_attributes = [
  {
    email: 'flavio123@gmail.com',
    password: '123456',
    # username: 'Flavio'

  },
  {
    email: 'rodrigo123@gmail.com',
    password: '123456',
    # username: 'Rodrigo123'

  },
  {
    email: 'ricardo@gmail.com',
    password: '123456',
    # username: 'Ricardo'

  },
  {
    email: 'flavia@msn.com',
    password: '123456',
    # username: 'Flavia'

  },
  {
    email: 'olivia@sfr.com',
    password: '123456',
    # username: 'Olivia-Linda'

  },
  {
    email: 'Alexia@aol.com',
    password: '123456',
    # username: 'Alexia'

  }
]
User.create!(users_attributes)
users = User.all

# Request's seeding

requests_attributes = [
  {
    delivery_date_time: '05/12/2018',
    origin: 'Avenida Paulista, 9756 - Sao Paulo',
    destination: 'Rua Aprazivel, 18 - Rio de Janeiro',
    size: 'Fits in a bag',
    price: '20',
    comment: "Have an important document to be delivered in Rio by tomorrow. Anybody up for it?",
    user: users.sample
  },
  {
    delivery_date_time: '06/12/2018',
    origin: 'Rua Henrique Schaumann, 110 - Sao Paulo',
    destination: 'Rua do Catete, 18 - Rio de Janeiro',
    size: 'Fits in a car',
    price: '40',
    comment: "Need to deliver a medium-size box with a bunch of stuff. Anybody going there by car?",
    user: users.sample
  },
  {
    delivery_date_time: '07/12/2018',
    origin: 'Rua Apinages, 15 - Sao Paulo',
    destination: 'Rua Visconde de Piraja, 38 - Rio de Janeiro',
    size: 'Fits in a van',
    price: "60",
    comment: "Is anyone going to Rio this date with a lot of free space? Have a small chair that I need to drop off there.",
    user: users.sample
  },
  {
    delivery_date_time: '08/12/2018',
    origin: 'Rua dos Pinheiros, 23 - Sao Paulo',
    destination: 'Avenida Nossa Senhora, 56 - Rio de Janeiro',
    size: 'Fits in a big car',
    price: "55",
    comment: "Have big lugagge to take to Rio, could fit in a big trunk. Anyone with free space in for some bucks?",
    user: users.sample
  },
  {
    delivery_date_time: '09/12/2019',
    origin: 'Avenida do Gasometro, 750 - Sao Paulo',
    destination: 'Avenida do Maracana, 81 - Rio de Janeiro',
    size: 'Fits in a pocket',
    price: "20",
    comment: "Can anyone bring me the keys I forgot? I need then asap. Anyone willing to help for some cash???",
    user: users.sample
  },
  {
    delivery_date_time: '10/12/2018',
    origin: 'Rua da Gloria, 13 - Rio de Janeiro',
    destination: 'Avenida da Consolaçao, 39 - Sao Paulo',
    size: 'Fits in a bag',
    price: '35',
    comment: "Forgot to bring a jacket and trousers to Sao Paulo. Could you slip in you bag when coming to Sao Paulo?",
    user: users.sample
  },
  {
    delivery_date_time: '11/12/2018',
    origin: 'Rua Barao Reis, 81 - Rio de Janeiro',
    destination: 'Rua Alfonso Bovero, 23 - Sao Paulo',
    size: 'Fits in a car',
    price: "40",
    comment: "Forgot my folder in Rio, anyone coming to Sao Paulo that could bring me?",
    user: users.sample
  },
  {
    delivery_date_time: '12/12/2018',
    origin: 'Avenida Copacabana, 231 - Rio de Janeiro',
    destination: 'Rua Capote Valente, 90 - Sao Paulo',
    size: 'Fits in a car',
    price: "35",
    comment: "Coming to Sao Paulo tonight? Could you bring me a small bag?",
    user: users.sample
  },
  {
    delivery_date_time: '13/12/2018',
    origin: 'Avenida Atlantica, 908 - Rio de Janeiro',
    destination: 'Avenida Jabaquara, 588 - Sao Paulo',
    size: 'Fits in a van',
    price: "60",
    comment: "Need to bring a small table to Rio. Could you fit it in your",
    user: users.sample
  }
]

Request.create!(requests_attributes)

# Review's seeding

reviews_attributes = [
  {
    content: 'super willing to help, and the delivery went completely fine. I recommend.',
    rating: 5,
    # user: users.sample
  },
  {
    content: 'Super easy to reach and meet.',
    rating: 5,
    # user: users.sample
  },
  {
    content: 'Nice guy. I recommend.',
    rating: 4,
    # user: users.sample
  },
  {
    content: 'Despite some difficulties to meet, everything was ok.',
    rating: 5,
    # user: users.sample
  },
  {
    content: 'Available and charming. I recommend.',
    rating: 3,
    # user: users.sample
  },
  {
    content: 'Do not recommend. Could not reach him on the phone',
    rating: 2,
    # user: users.sample
  }
]
Review.create!(reviews_attributes)
puts 'Finished review!'
