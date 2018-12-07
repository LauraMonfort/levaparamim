# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'destroying old models'
User.destroy_all
Request.destroy_all
Review.destroy_all

# User's seeding
puts 'Creating Users...'
users_attributes = [
  {
    email: 'flavio123@gmail.com',
    password: '123456',
    username: 'Flavio',
    first_name: 'Flavio',
    last_name: 'Souza'
  },
  {
    email: 'rodrigo123@gmail.com',
    password: '123456',
    username: 'Rodrigo123',
    first_name: 'Rodrigo',
    last_name: 'Pereira'
  },
  {
    email: 'ricardo@gmail.com',
    password: '123456',
    username: 'Ricardo',
    first_name: 'Ricardo',
    last_name: 'dos Santos'
  },
  {
    email: 'flavia@msn.com',
    password: '123456',
    username: 'Flavinha',
    first_name: 'Flavia',
    last_name: 'da Silva'
  },
  {
    email: 'olivia@sfr.com',
    password: '123456',
    username: 'Olivia-Linda',
    first_name: 'Olivia',
    last_name: 'Linda'
  },
  {
    email: 'Alexia@aol.com',
    password: '123456',
    username: 'Alexia',
    first_name: 'Alexia',
    last_name: 'Macedo'
  },
  {
    email: 'marcelo.freitas@gmail.com',
    password: '123456',
    username: 'marfreitas',
    first_name: 'Marcelo',
    last_name: 'Freitas'
  },
  {
    email: 'camila.gois@aol.com',
    password: '123456',
    username: 'Camygois',
    first_name: 'Camila',
    last_name: 'Gois'
  },
  {
    email: 'larissa.dolores@gmail.com',
    password: '123456',
    username: 'Laridor',
    first_name: 'Larissa',
    last_name: 'Dolores'
  },
  {
    email: 'joao.queiroz@aol.com',
    password: '123456',
    username: 'queirozjoao',
    first_name: 'Joao',
    last_name: 'Queiroz'
  }
]

User.create!(users_attributes)
users = User.all
puts 'Finished user!'

puts 'Creating requests...'
requests_attributes = [
  {
    delivery_date: '09/12/2018',
    origin: 'Avenida Paulista, 2300 - São Paulo',
    destination: 'Rua Aprazivel, 18 - Rio de Janeiro',
    size: 'Fits in a bag',
    price: '20',
    comment: "Have an important document to be delivered in Rio by tomorrow. Anybody up for it?",
    user: users.sample,
    remote_image_url: "https://res.cloudinary.com/danielujikawa/image/upload/v1544031266/envelope.jpg"

  },
  {
    delivery_date: '09/12/2018',
    origin: 'Rua Henrique Schaumann, 678 - São Paulo',
    destination: 'Rua do Catete, 18 - Rio de Janeiro',
    size: 'Fits in a car',
    price: '40',
    comment: "Need to deliver a medium-size box with a bunch of stuff. Anybody going there by car?",
    user: users.sample,
    remote_image_url: "https://res.cloudinary.com/danielujikawa/image/upload/v1544031266/medium_box_stuff.jpg"
  },
  {
    delivery_date: '09/12/2018',
    origin: 'Rua Purpurina, 230 - São Paulo',
    destination: 'Rua Visconde de Piraja, 38 - Rio de Janeiro',
    size: 'Fits in a van',
    price: "60",
    comment: "Is anyone going to Rio this date with a lot of free space? Have a small chair that I need to drop off there.",
    user: users.sample,
    remote_image_url: "https://res.cloudinary.com/danielujikawa/image/upload/v1544031266/fugly_chair.jpg"
  },
  {
    delivery_date: '09/12/2018',
    origin: 'Rua dos Pinheiros, 325 - São Paulo',
    destination: 'Avenida Nossa Senhora, 56 - Rio de Janeiro',
    size: 'Fits in a big car',
    price: "55",
    comment: "Have big lugagge to take to Rio, could fit in a big trunk. Anyone with free space in for some bucks?",
    user: users.sample,
    remote_image_url: "https://res.cloudinary.com/danielujikawa/image/upload/v1544031266/overloaded-suitcase.jpg"
  },
  {
    delivery_date: '09/12/2018',
    origin: 'Rua Augusta, 2134 - São Paulo',
    destination: 'Avenida do Maracana, 81 - Rio de Janeiro',
    size: 'Fits in a pocket',
    price: "20",
    comment: "Can anyone bring me the keys I forgot? I need then asap. Anyone willing to help for some cash???",
    user: users.sample,
    remote_image_url: "https://res.cloudinary.com/danielujikawa/image/upload/v1544031266/giant_haunted_key.jpg"
  },
  {
    delivery_date: '09/12/2018',
    origin: 'Rua Barata Ribeiro, 449 - Rio de Janeiro',
    destination: 'Avenida da Consolaçao, 39 - São Paulo',
    size: 'Fits in a bag',
    price: '35',
    comment: "Forgot to bring a jacket and trousers to São Paulo. Could you slip in you bag when coming to São Paulo?",
    user: users.sample,
    remote_image_url: "https://res.cloudinary.com/danielujikawa/image/upload/v1544031266/folded_jacket.jpg"
  },
  {
    delivery_date: '09/12/2018',
    origin: 'Ladeira da Gloria, 26 - Rio de Janeiro',
    destination: 'Rua Alfonso Bovero, 23 - São Paulo',
    size: 'Fits in a car',
    price: "40",
    comment: "Forgot my folder in Rio, anyone coming to São Paulo that could bring me?",
    user: users.sample,
    remote_image_url: "https://res.cloudinary.com/danielujikawa/image/upload/v1544031267/small_bag.jpg"
  },
  {
    delivery_date: '09/12/2018',
    origin: 'Rua Leblon, 11 - Rio de Janeiro',
    destination: 'Rua Capote Valente, 90 - São Paulo',
    size: 'Fits in a car',
    price: "35",
    comment: "Coming to São Paulo tonight? Could you bring me a small bag?",
    user: users.sample,
    remote_image_url: "https://res.cloudinary.com/danielujikawa/image/upload/v1544031267/small_bag.jpg"
  },
  {
    delivery_date: '09/12/2018',
    origin: 'Avenida Atlantica, 908 - Rio de Janeiro',
    destination: 'Avenida Jabaquara, 588 - São Paulo',
    size: 'Fits in a van',
    price: "60",
    comment: "Need to bring a small table to Rio. Could you fit it in your",
    user: users.sample,
    remote_image_url: "https://res.cloudinary.com/danielujikawa/image/upload/v1544031266/small_table.jpg"
  }
]

Request.create!(requests_attributes)
puts 'Finished requests!'

# Review's seeding

puts 'Creating reviews...'
reviews_attributes = [
  {
    content: 'super willing to help, and the delivery went completely fine. I recommend.',
    rating: 5,
    review_type: 'sender',
    user: users.sample
  },
  {
    content: 'Super easy to reach and meet.',
    rating: 5,
    review_type: 'sender',
    user: users.sample
  },
  {
    content: 'Nice guy. I recommend.',
    rating: 4,
    review_type: 'sender',
    user: users.sample
  },
  {
    content: 'Despite some difficulties to meet, everything was ok.',
    rating: 5,
    review_type: 'sender',
    user: users.sample
  },
  {
    content: 'Available and charming. I recommend.',
    rating: 3,
    review_type: 'sender',
    user: users.sample
  },
  {
    content: 'Do not recommend. Could not reach him on the phone',
    rating: 2,
    review_type: 'sender',
    user: users.sample
  },
   {
    content: 'Made me wait 50min longer than we accorded and did not even apologize. Would think twice before choosing him.',
    rating: 1,
    review_type: 'sender',
    user: users.sample
  },
  {
    content: 'Evertyhing ok.',
    rating: 5,
    review_type: 'sender',
    user: users.sample
  },
  {
    content: 'Some miscommunication on both parts, but everything went fine in the end.',
    rating: 4,
    review_type: 'sender',
    user: users.sample
  }
]
Review.create!(reviews_attributes)
puts 'Finished reviews!'
