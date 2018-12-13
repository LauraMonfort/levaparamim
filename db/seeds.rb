# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'destroying old models'
Booking.destroy_all
User.destroy_all
Request.destroy_all
Review.destroy_all

# User's seeding
puts 'Creating Users...'
users_attributes = [
  {
    email: 'claudio123@gmail.com',
    password: '123456',
    # username: 'claudiovicter',
    first_name: 'Claudio',
    last_name: 'Victer',
    remote_avatar_url: "https://res.cloudinary.com/danielujikawa/image/upload/v1544544270/Avatars/man5.jpg"
  },
  {
    email: 'rodrigo123@gmail.com',
    password: '123456',
    # username: 'Rodrigo123',
    first_name: 'Rodrigo',
    last_name: 'Assuf',
    remote_avatar_url: "https://res.cloudinary.com/danielujikawa/image/upload/v1544544270/Avatars/man3.jpg"
  },
  {
    email: 'ricardo@gmail.com',
    password: '123456',
    # username: 'ricardotognola',
    first_name: 'Ricardo',
    last_name: 'Tognola',
    remote_avatar_url: "https://res.cloudinary.com/danielujikawa/image/upload/v1544544270/Avatars/man4.jpg"
  },
  {
    email: 'flavia@msn.com',
    password: '123456',
    # username: 'Flavinha',
    first_name: 'Flavia',
    last_name: 'da Silva',
    remote_avatar_url: "https://res.cloudinary.com/danielujikawa/image/upload/v1544544271/Avatars/woman4.jpg"
  },
  {
    email: 'milicardo@sfr.com',
    password: '123456',
    # username: 'milicardo',
    first_name: 'Milene',
    last_name: 'Cardoso',
    remote_avatar_url: "https://res.cloudinary.com/danielujikawa/image/upload/v1544544273/Avatars/woman7.jpg"
  },
  {
    email: 'Alexia@aol.com',
    password: '123456',
    # username: 'Alexia',
    first_name: 'Alexandra',
    last_name: 'Macedo',
    remote_avatar_url: "https://res.cloudinary.com/danielujikawa/image/upload/v1544544270/Avatars/woman3.jpg"
  },
  {
    email: 'marcelo.freitas@gmail.com',
    password: '123456',
    # username: 'marfreitas',
    first_name: 'Josy',
    last_name: 'Freitas',
    remote_avatar_url: "https://res.cloudinary.com/danielujikawa/image/upload/v1544544273/Avatars/woman6.jpg"
  },
  {
    email: 'camila.gois@aol.com',
    password: '123456',
    # username: 'Camygois',
    first_name: 'Camila',
    last_name: 'Gois',
    remote_avatar_url: "https://res.cloudinary.com/danielujikawa/image/upload/v1544544273/Avatars/woman5.jpg"
  },
  {
    email: 'larissa.dolores@gmail.com',
    password: '123456',
    # username: 'Laridor',
    first_name: 'Larissa',
    last_name: 'Dolores',
    remote_avatar_url: "https://res.cloudinary.com/danielujikawa/image/upload/v1544544270/Avatars/woman2.jpg"
  },
  {
    email: 'justin.holt@aol.com',
    password: '123456',
    # username: 'dholt',
    first_name: 'Justin',
    last_name: 'Holt',
    remote_avatar_url: "https://res.cloudinary.com/danielujikawa/image/upload/v1544544270/Avatars/man1.jpg"
  },
  {
    email: 'policruz@gmail.com',
    password: '123456',
    # username: 'pcruz',
    first_name: 'Poliana',
    last_name: 'Cruz',
    remote_avatar_url: "https://res.cloudinary.com/danielujikawa/image/upload/v1544544270/Avatars/woman1.jpg"
  },
  {
    email: 'renatopeixoto@gmail.com',
    password: '123456',
    # username: 'renatopeixoto',
    first_name: 'Renato',
    last_name: 'Peixoto',
    remote_avatar_url: "https://res.cloudinary.com/danielujikawa/image/upload/v1544544270/Avatars/man2.jpg"
  },
  {
    email: 'lauramonfort@live.fr',
    password: '123456',
    # username: 'renatopeixoto',
    first_name: 'Laura',
    last_name: 'Monfort',
    remote_avatar_url: "https://res.cloudinary.com/danielujikawa/image/upload/v1544702052/Avatars/LauraMonfort.jpg"
  },
  {
    email: 'btoledo1973@gmail.com',
    password: '123456',
    # username: 'renatopeixoto',
    first_name: 'Bruno',
    last_name: 'Toledo',
    remote_avatar_url: "https://res.cloudinary.com/danielujikawa/image/upload/v1544702051/Avatars/BrunoToledo.jpg"
  },
  {
    email: 'danielujikawa@gmail.com',
    password: '123456',
    # username: 'renatopeixoto',
    first_name: 'Daniel',
    last_name: 'Ujikawa',
    remote_avatar_url: "https://res.cloudinary.com/danielujikawa/image/upload/v1544702051/Avatars/DanielUjikawa.jpg"
  }
]

User.create!(users_attributes)
users = User.all
puts 'Finished user!'
# Request'size seedingQ8OV29V7

puts 'Creating requests...'
requests_attributes = [
  #Sao Paulo --> Rio
  {
    delivery_date: '15/12/2018',
    origin: 'Rua Aimberê, 1512 - São Paulo, Brazil',
    destination: 'Ladeira da Glória, 26 - Rio de Janeiro, Brazil',
    size: 'Fits in a bag',
    price: "30",
    comment: "School is back next week, and need this backpack for my son. Anyone care to bring it?",
    user: User.where(first_name: 'Alexandra').first,
    remote_image_url: "https://res.cloudinary.com/danielujikawa/image/upload/v1544711281/Objects/New_objects/jaizer-capangpangan-1075724-unsplash.jpg",
    origin_neighborhood: "São Paulo - Perdizes",
    destination_neighborhood: "Rio de Janeiro - Glória"
  },
  {
    delivery_date: '15/12/2018',
    origin: 'Rua Rio Grande, 455 - São Paulo, Brazil',
    destination: 'Rua Leblon, 11 - Rio de Janeiro, Brazil',
    size: 'Fits in a van',
    price: "50",
    comment: "Coming to Rio from Sampa tonight? Could you bring me this bicycle?",
    user: User.where(first_name: 'Flavia').first,
    remote_image_url: "https://res.cloudinary.com/danielujikawa/image/upload/v1544708637/Objects/New_objects/mac-blades-422852-unsplash.jpg",
    origin_neighborhood: "São Paulo - Vila Mariana",
    destination_neighborhood: "Rio de Janeiro - Leblon"
  },
  {
    delivery_date: '15/12/2018',
    origin: 'Avenida Paulista, 2300 - São Paulo, Brazil',
    destination: 'Rua Aprazivel, 18 - Rio de Janeiro, Brazil',
    size: 'Fits in a big car',
    price: '40',
    comment: "Forgot my fave guitar in São Paulo and need it for a concert tomorrow. Anybody up for it?",
    user: User.where(first_name: 'Renato').first,
    remote_image_url: "https://res.cloudinary.com/danielujikawa/image/upload/v1544710894/Objects/New_objects/matthijs-smit-574921-unsplash.jpg",
    origin_neighborhood: "São Paulo - Bela Vista",
    destination_neighborhood: "Rio de Janeiro - Santa Teresa"
  },
  {
    delivery_date: '15/12/2018',
    origin: 'Rua Augusta, 2134 - São Paulo, Brazil',
    destination: 'Rua Conde de Bonfim, 615 - Rio de Janeiro, Brazil',
    size: 'Fits in a pocket',
    price: "20",
    comment: "Can anyone bring me the keys I forgot? I need then asap. Anyone willing to help for some easy cash???",
    user: User.where(first_name: 'Justin').first,
    remote_image_url: "https://res.cloudinary.com/danielujikawa/image/upload/v1544711136/Objects/New_objects/roland-denes-768377-unsplash.jpg",
    origin_neighborhood: "São Paulo - Vila Buarque",
    destination_neighborhood: "Rio de Janeiro - Tijuca"
  },
  {
    delivery_date: '15/12/2018',
    origin: 'Rua Henrique Schaumann, 678 - São Paulo, Brazil',
    destination: 'Rua do Catete, 18 - Rio de Janeiro, Brazil',
    size: 'Fits in a bag',
    price: '30',
    comment: "Forgot my kid's teddy bear in Sampa. Anyone coming to Rio that could help me? Kid won't sleep and cries all the time!",
    user: User.where(first_name: 'Poliana').first,
    remote_image_url: "https://res.cloudinary.com/danielujikawa/image/upload/v1544708706/Objects/New_objects/alex-blajan-99321-unsplash.jpg",
    origin_neighborhood: "São Paulo - Pinheiros",
    destination_neighborhood: "Rio de Janeiro - Catete"
  },
  {
    delivery_date: '15/12/2018',
    origin: 'Rua Purpurina, 230 - São Paulo, Brazil',
    destination: 'Rua Visconde de Piraja, 38 - Rio de Janeiro, Brazil',
    size: 'Fits in a car',
    price: "60",
    comment: "Got this camera from a friend, could you bring it to me before I travel on Monday?",
    user: User.where(first_name: 'Larissa').first,
    remote_image_url: "https://res.cloudinary.com/danielujikawa/image/upload/v1544708707/Objects/New_objects/jd-gipson-687771-unsplash.jpg",
    origin_neighborhood: "São Paulo - Vila Madalena",
    destination_neighborhood: "Rio de Janeiro - Ipanema"
  },
  {
    delivery_date: '15/12/2018',
    origin: 'Rua dos Pinheiros, 325 - São Paulo, Brazil',
    destination: 'Avenida Nossa Senhora de Copacabana, 56 - Rio de Janeiro, Brazil',
    size: 'Fits in a bag',
    price: "20",
    comment: "Need this desperately! My son won't bath without this, and he won't stop crying. Anyone can relate and bring it to me, please? ",
    user: User.where(first_name: 'Camila').first,
    remote_image_url: "https://res.cloudinary.com/danielujikawa/image/upload/v1544708636/Objects/New_objects/duck_bath2.jpg",
    origin_neighborhood: "São Paulo - Alto de Pinheiros",
    destination_neighborhood: "Rio de Janeiro - Copacabana"
  },
  {
    delivery_date: '15/12/2018',
    origin: 'Rua da Consolação, 2104 - São Paulo, Brazil',
    destination: 'Rua Barata Ribeiro, 449 - Rio de Janeiro, Brazil',
    size: 'Fits in a van',
    price: '70',
    comment: "Got this dresser from a friend, but need to have it delivered to me. It's small enough to fit in a van.",
    user: User.where(first_name: 'Josy').first,
    remote_image_url: "https://res.cloudinary.com/danielujikawa/image/upload/v1544710218/Objects/New_objects/randy-fath-1136929-unsplash.jpg",
    origin_neighborhood: "São Paulo - Consolação",
    destination_neighborhood: "Rio de Janeiro - Copacabana"
  },
  {
    delivery_date: '15/12/2018',
    origin: 'Avenida Jabaquara, 588 - São Paulo, Brazil',
    destination: 'Avenida Maracanã, 592 - Rio de Janeiro, Brazil',
    size: 'Fits in a bag',
    price: "20",
    comment: "Forgot my lucky soccer ball in Sampa. Could you bring it to me before the game?",
    user: User.where(first_name: 'Claudio').first,
    remote_image_url: "https://res.cloudinary.com/danielujikawa/image/upload/v1544708717/Objects/New_objects/andy-hall-376567-unsplash.jpg",
    origin_neighborhood: "São Paulo - Jabaquara",
    destination_neighborhood: "Rio de Janeiro - Maracanã"
  },
  {
    delivery_date: '15/12/2018',
    origin: 'Avenida Pavão, 231 - São Paulo, Brazil',
    destination: 'Rua Jardim Botânico, 209 - Rio de Janeiro, Brazil',
    size: 'Fits in a bag',
    price: "30",
    comment: "Forgot my trusty headphones in Rio. Could you bring them to me, please?",
    user: User.where(first_name: 'Daniel').first,
    remote_image_url: "https://res.cloudinary.com/danielujikawa/image/upload/v1544708691/Objects/New_objects/jonathan-velasquez-742494-unsplash.jpg",
    origin_neighborhood: "São Paulo - Moema",
    destination_neighborhood: "Rio de Janeiro - Jardim Botânico"
  },
  {
    delivery_date: '15/12/2018',
    origin: 'Rua Tabapuã, 1412 - São Paulo, Brazil',
    destination: 'Avenida Armando Lombardi, 431 - Rio de Janeiro, Brazil',
    size: 'Fits in a bag',
    price: "20",
    comment: "Need my diary! Anyone coming from Sampa to bring it to me, please?",
    user: User.where(first_name: 'Laura').first,
    remote_image_url: "https://res.cloudinary.com/danielujikawa/image/upload/v1544708700/Objects/New_objects/rawpixel-1071103-unsplash.jpg",
    origin_neighborhood: "São Paulo - Itaim Bibi",
    destination_neighborhood: "Rio de Janeiro - Barra da Tijuca"
  },
  {
    delivery_date: '15/12/2018',
    origin: 'Rua Oscar Freire, 454, Jardim Paulista - São Paulo, Brazil',
    destination: 'Rua Marquês de Abrantes, 35 - Rio de Janeiro, Brazil',
    size: 'Fits in a bag',
    price: "20",
    comment: "Borrowed these from my sister without telling her and forgot it in Sampa. Can anyone bring it to me before she kills me??",
    user: User.where(first_name: 'Milene').first,
    remote_image_url: "https://res.cloudinary.com/danielujikawa/image/upload/v1544708693/Objects/New_objects/annie-theby-416948-unsplash.jpg",
    origin_neighborhood: "São Paulo - Jardins",
    destination_neighborhood: "Rio de Janeiro - Flamengo"
  },

# Rio --> Sao Paulo
  {
    delivery_date: '15/12/2018',
    origin: 'Rua Marquês de Abrantes, 35 - Rio de Janeiro, Brazil',
    destination: 'Rua Oscar Freire, 454 - São Paulo, Brazil',
    size: 'Fits in a bag',
    price: "20",
    comment: "Borrowed these from my sister without telling her and forgot it in Rio. Can anyone bring it to me before she kills me??",
    user: User.where(first_name: 'Milene').first,
    remote_image_url: "https://res.cloudinary.com/danielujikawa/image/upload/v1544708693/Objects/New_objects/annie-theby-416948-unsplash.jpg",
    origin_neighborhood: "Rio de Janeiro - Flamengo",
    destination_neighborhood: "São Paulo - Jardins"
  },
  {
    delivery_date: '15/12/2018',
    origin: 'Rua São Clemente, 32 - Rio de Janeiro, Brazil',
    destination: 'Av. Pacaembu, 746 - São Paulo, Brazil',
    size: 'Fits in a bag',
    price: "10",
    comment: "Miss my favorite local snack. Can anyone bring it to me?",
    user: User.where(first_name: 'Ricardo').first,
    remote_image_url: "https://res.cloudinary.com/danielujikawa/image/upload/v1544708635/Objects/New_objects/biscoito-globo_reproducao-facebook_cortada.jpg",
    origin_neighborhood: "Rio de Janeiro - Botafogo",
    destination_neighborhood: "São Paulo - Pacaembu"
  },
  {
    delivery_date: '15/12/2018',
    origin: 'Rua Aprazível, 62, Santa Teresa - Rio de Janeiro, Brazil',
    destination: 'Avenida Paulista, 2300 - São Paulo, Brazil',
    size: 'Fits in a big car',
    price: '40',
    comment: "Forgot my fave guitar in Rio and need it for a concert tomorrow. Anybody up for it?",
    user: User.where(first_name: 'Renato').first,
    remote_image_url: "https://res.cloudinary.com/danielujikawa/image/upload/v1544710894/Objects/New_objects/matthijs-smit-574921-unsplash.jpg",
    origin_neighborhood: "Rio de Janeiro - Santa Teresa",
    destination_neighborhood: "São Paulo - Bela Vista",
  },
  {
    delivery_date: '15/12/2018',
    origin: 'Rua do Catete, 18, Catete - Rio de Janeiro, Brazil',
    destination: 'Rua Henrique Schaumann, 678 - São Paulo, Brazil',
    size: 'Fits in a bag',
    price: '30',
    comment: "Forgot my kid's teddy bear in Rio. Anyone coming to Rio that could help me? Kid won't sleep and cries all the time!",
    user: User.where(first_name: 'Poliana').first,
    remote_image_url: "https://res.cloudinary.com/danielujikawa/image/upload/v1544708706/Objects/New_objects/alex-blajan-99321-unsplash.jpg",
    origin_neighborhood: "Rio de Janeiro - Catete",
    destination_neighborhood: "São Paulo - Pinheiros"
  },
  {
    delivery_date: '15/12/2018',
    origin: 'Rua Visconde de Piraja, 38 - Rio de Janeiro, Brazil',
    destination: 'Rua Purpurina, 230 - São Paulo, Brazil',
    size: 'Fits in a car',
    price: "60",
    comment: "Got this camera from a friend, could you bring it to me before I travel on Monday?",
    user: User.where(first_name: 'Larissa').first,
    remote_image_url: "https://res.cloudinary.com/danielujikawa/image/upload/v1544708707/Objects/New_objects/jd-gipson-687771-unsplash.jpg",
    origin_neighborhood: "Rio de Janeiro - Ipanema",
    destination_neighborhood: "São Paulo - Vila Madalena"
  },
  {
    delivery_date: '15/12/2018',
    origin: 'Avenida Nossa Senhora de Copacabana, 56 - Rio de Janeiro, Brazil',
    destination: 'Rua dos Pinheiros, 325 - São Paulo, Brazil',
    size: 'Fits in a bag',
    price: "20",
    comment: "Need this desperately! My son won't bath without this, and he won't stop crying. Anyone can relate and bring it to me, please? ",
    user: User.where(first_name: 'Camila').first,
    remote_image_url: "https://res.cloudinary.com/danielujikawa/image/upload/v1544708636/Objects/New_objects/duck_bath2.jpg",
    origin_neighborhood: "Rio de Janeiro - Copacabana",
    destination_neighborhood: "São Paulo - Alto de Pinheiros"
  },
  {
    delivery_date: '15/12/2018',
    origin: 'Rua Conde de Bonfim, 615 - Rio de Janeiro, Brazil',
    destination: 'Rua Augusta, 2134 - São Paulo, Brazil',
    size: 'Fits in a pocket',
    price: "20",
    comment: "Can anyone bring me the keys I forgot? I need then asap. Anyone willing to help for some easy cash???",
    user: User.where(first_name: 'Justin').first,
    remote_image_url: "https://res.cloudinary.com/danielujikawa/image/upload/v1544711136/Objects/New_objects/roland-denes-768377-unsplash.jpg",
    origin_neighborhood: "Rio de Janeiro - Tijuca",
    destination_neighborhood: "São Paulo - Vila Buarque"
  },
  {
    delivery_date: '15/12/2018',
    origin: 'Rua Barata Ribeiro, 449 - Rio de Janeiro, Brazil',
    destination: 'Rua da Consolação, 2104 - São Paulo, Brazil',
    size: 'Fits in a van',
    price: '70',
    comment: "Got this dresser from a friend, but need to have it delivered to me. It's small enough to fit in a van.",
    user: User.where(first_name: 'Josy').first,
    remote_image_url: "https://res.cloudinary.com/danielujikawa/image/upload/v1544710218/Objects/New_objects/randy-fath-1136929-unsplash.jpg",
    origin_neighborhood: "Rio de Janeiro - Copacabana",
    destination_neighborhood: "São Paulo - Consolação"
  },
  {
    delivery_date: '15/12/2018',
    origin: 'Ladeira da Glória, 26 - Rio de Janeiro, Brazil',
    destination: 'Rua Aimberê, 1512 - São Paulo, Brazil',
    size: 'Fits in a bag',
    price: "30",
    comment: "School is back next week, and need this backpack for my son. Anyone care to bring it?",
    user: User.where(first_name: 'Alexandra').first,
    remote_image_url: "https://res.cloudinary.com/danielujikawa/image/upload/v1544711281/Objects/New_objects/jaizer-capangpangan-1075724-unsplash.jpg",
    origin_neighborhood: "Rio de Janeiro - Glória",
    destination_neighborhood: "São Paulo - Perdizes"
  },
  {
    delivery_date: '15/12/2018',
    origin: 'Rua Leblon, 11 - Rio de Janeiro, Brazil',
    destination: 'Rua Rio Grande, 455 - São Paulo, Brazil',
    size: 'Fits in a van',
    price: "50",
    comment: "Coming to São Paulo tonight? Could you bring me this bicycle?",
    user: User.where(first_name: 'Flavia').first,
    remote_image_url: "https://res.cloudinary.com/danielujikawa/image/upload/v1544708637/Objects/New_objects/mac-blades-422852-unsplash.jpg",
    origin_neighborhood: "Rio de Janeiro - Leblon",
    destination_neighborhood: "São Paulo - Vila Mariana"
  },
  {
    delivery_date: '15/12/2018',
    origin: 'Avenida Maracanã, 592 - Rio de Janeiro, Brazil',
    destination: 'Avenida Jabaquara, 588 - São Paulo, Brazil',
    size: 'Fits in a bag',
    price: "20",
    comment: "Forgot my lucky soccer ball in Rio. Could you bring it to me before the game?",
    user: User.where(first_name: 'Claudio').first,
    remote_image_url: "https://res.cloudinary.com/danielujikawa/image/upload/v1544708717/Objects/New_objects/andy-hall-376567-unsplash.jpg",
    origin_neighborhood: "Rio de Janeiro - Maracanã",
    destination_neighborhood: "São Paulo - Jabaquara"
  },
  {
    delivery_date: '15/12/2018',
    origin: 'Rua Jardim Botânico, 209, 22460-000 - Rio de Janeiro, Brazil',
    destination: 'Avenida Pavão, 231 - São Paulo, Brazil',
    size: 'Fits in a bag',
    price: "30",
    comment: "Forgot my trusty headphones in Rio. Could you bring them to me, please?",
    user: User.where(first_name: 'Daniel').first,
    remote_image_url: "https://res.cloudinary.com/danielujikawa/image/upload/v1544708691/Objects/New_objects/jonathan-velasquez-742494-unsplash.jpg",
    origin_neighborhood: "Rio de Janeiro - Jardim Botânico",
    destination_neighborhood: "São Paulo - Moema"
  },
  {
    delivery_date: '15/12/2018',
    origin: 'Avenida Armando Lombardi, 431, 22640-020 - Rio de Janeiro, Brazil',
    destination: 'Rua Tabapuã, 1412 - São Paulo, Brazil',
    size: 'Fits in a bag',
    price: "20",
    comment: "Need my diary! Anyone coming from Rio to bring it to me, please?",
    user: User.where(first_name: 'Laura').first,
    remote_image_url: "https://res.cloudinary.com/danielujikawa/image/upload/v1544708700/Objects/New_objects/rawpixel-1071103-unsplash.jpg",
    origin_neighborhood: "Rio de Janeiro - Barra da Tijuca",
    destination_neighborhood: "São Paulo - Itaim Bibi"
  }
]

Request.create!(requests_attributes)
puts 'Finished requests!'

# 10.times do
#   Booking.create!(
#     status: 'Confirmado',
#     user: User.all.sample,
#     request: Request.all.sample
#     )
# end
# puts 'Finished bookings!'

# Review's seeding

puts 'Creating reviews...'
reviews_attributes = [
  {
    content: 'super willing to help, and the delivery went completely fine. I recommend.',
    rating: 5,
    review_type: 'sender',
    user: users.sample,
    booking: Booking.all.sample
  },
  {
    content: 'Super easy to reach and meet.',
    rating: 5,
    review_type: 'sender',
    user: users.sample,
    booking: Booking.all.sample
  },
  {
    content: 'Nice guy. I recommend.',
    rating: 4,
    review_type: 'sender',
    user: users.sample,
    booking: Booking.all.sample
  },
  {
    content: 'Despite some difficulties to meet, everything was ok.',
    rating: 5,
    review_type: 'sender',
    user: users.sample,
    booking: Booking.all.sample
  },
  {
    content: 'Available and charming. I recommend.',
    rating: 3,
    review_type: 'sender',
    user: users.sample,
    booking: Booking.all.sample
  },
  {
    content: 'Do not recommend. Could not reach him on the phone',
    rating: 2,
    review_type: 'sender',
    user: users.sample,
    booking: Booking.all.sample
  },
  {
    content: 'Made me wait 50min longer than we accorded and did not even apologize. Would think twice before choosing him.',
    rating: 1,
    review_type: 'sender',
    user: users.sample,
    booking: Booking.all.sample
  },
  {
    content: 'Evertyhing ok.',
    rating: 5,
    review_type: 'sender',
    user: users.sample,
    booking: Booking.all.sample
  },
  {
    content: 'Some miscommunication on both parts, but everything went fine in the end.',
    rating: 4,
    review_type: 'sender',
    user: users.sample,
    booking: Booking.all.sample
  }
]
Review.create!(reviews_attributes)
puts 'Finished reviews!'
