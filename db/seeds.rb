require "open-uri"
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.destroy_all
puts 'Creating 10 fake user...'
10.times do
  user = User.new(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    password: "123456",
    email: Faker::Internet.email
  )
  user.save!
end

Inflatable.all.each do |inflatable|
  inflatable.photo.purge
end
Inflatable.destroy_all

inflatable = Inflatable.new(
  title: "MDutra Inflatable Paddling/Swimming Pool",
  description: "Transform the back garden with these high-quality AquaTech Inflatable Garden Swimming Pools.
  Offering something for the whole family to enjoy, these premium paddling pools can be set up in just 10 minutes,
  allowing the water-based fun to begin almost instantly.",
  category: "Pools",
  price: Faker::Commerce.price,
  user: User.all.sample
)
file = URI.open("https://res.cloudinary.com/dayeka7nl/image/upload/v1677764267/Inflatables/pool_n05m37.png")
inflatable.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
inflatable.save!

inflatable = Inflatable.new(
  title: "Inflatable SUPER DUPER Tank with water sprinkler",
  description: "Tired of swimming? Hurry up and try the water gun game!
  The water gun can be placed in the front of the tank swimming cup at night.
  Another way to play, go have fun in the sun.",
  category: "Pools",
  price: Faker::Commerce.price,
  user: User.all.sample
)
file = URI.open("https://res.cloudinary.com/dayeka7nl/image/upload/v1677764127/Inflatables/tank_lkggum.png")
inflatable.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
inflatable.save!

inflatable = Inflatable.new(
  title: "TOP TIER Comfort Bubble Spa Hydromassage",
  description: "Treat yourself to the luxury of your own wellness oasis!
  MSpa's beautiful hot tubs make this possible.
  They are not only incredibly beautiful, but also impress with their functionality and innovation.
  Enjoy the luxurious massage function (138 massage jets in total) and the atmospheric ambience.",
  category: "Pools",
  price: Faker::Commerce.price,
  user: User.all.sample
)
file = URI.open("https://res.cloudinary.com/dayeka7nl/image/upload/v1677763473/Inflatables/md_pool_xzd48u.png")
inflatable.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
inflatable.save!

inflatable = Inflatable.new(
  title: "The smallest biggest Duck",
  description: "Introducing the quack-tastic inflatable duck!
  It's like a regular duck, but with a bit more air and a lot less feathers.
  This buoyant buddy is the ultimate wingman for any aquatic adventure.
  Need a companion for a pool party or beach day? Don't be a sitting duck!
  Just be sure to keep it away from any actual ducks, or they might get jealous of its inflated ego.",
  category: "Toys",
  price: Faker::Commerce.price,
  user: User.all.sample
)
file = URI.open("https://res.cloudinary.com/dayeka7nl/image/upload/v1677764651/Inflatables/duck_tyo7a1.png")
inflatable.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
inflatable.save!

inflatable = Inflatable.new(
  title: "2 Meter Water Walking Roll Ball",
  description: "Introducing the bouncy, wobbly, inflatable walking roll ball - the hamster wheel for humans!
  It's like rolling around in a giant bubble without the pesky inconvenience of actually being a hamster.
  So grab your friends, hop inside, and let the good times roll - literally!",
  category: "Toys",
  price: Faker::Commerce.price,
  user: User.all.sample
)
file = URI.open("https://res.cloudinary.com/dayeka7nl/image/upload/v1677762195/Inflatables/rollball_b0gcgc.png")
inflatable.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
inflatable.save!

inflatable = Inflatable.new(
  title: "Niagara Slide",
  description: "Ladies and gentlemen, step right up and behold the towering, majestic, inflatable slide!
  It's like a regular slide, but with a whole lot more bounce and a whole lot less dignity
  his colossal contraption is the ultimate playground for the young and young-at-heart alike.
  Come on down and take a ride on the wild side - with the inflatable slide!",
  category: "Slides",
  price: Faker::Commerce.price,
  user: User.all.sample
)
file = URI.open("https://res.cloudinary.com/dayeka7nl/image/upload/v1677765698/Inflatables/slide_1_i49mhm.png")
inflatable.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
inflatable.save!

inflatable = Inflatable.new(
  title: "Nuclear Kaiju",
  description: "Glow in the dark, that is all you need.",
  category: "Toys",
  price: Faker::Commerce.price,
  user: User.all.sample
)
file = URI.open("https://res.cloudinary.com/dayeka7nl/image/upload/v1677764127/Inflatables/kaiju_rejvvo.png")
inflatable.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
inflatable.save!

inflatable = Inflatable.new(
  title: "Please save me Alien",
  description: "Greetings, Earthlings! Prepare to be amazed by the otherworldly, inflatable alien costume!
  This cosmic getup will have you feeling like you've traveled light-years away from reality -
  or at least a few blocks down the street to the Halloween party.
  So beam me up, Scotty, and let's get ready to party - with the inflatable alien costume!",
  category: "Costumes",
  price: Faker::Commerce.price,
  user: User.all.sample
)
file = URI.open("https://res.cloudinary.com/dayeka7nl/image/upload/v1677764656/Inflatables/alien_costume_iiwpsy.png")
inflatable.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
inflatable.save!

inflatable = Inflatable.new(
  title: "T-rex king of chickens",
  description: "Get ready to stomp your way into the party scene with the inflatable T-Rex costume!
  This prehistoric getup will have you feeling like the king - or queen - of the jungle gym,
  ready to take on all challengers with your mighty jaws and stubby arms.
  ust be sure to watch out for any meteorites, or you might end up feeling a little extinct.
  Put on your best Jurassic swagger and get ready to tear up the dance floor",
  category: "Costumes",
  price: Faker::Commerce.price,
  user: User.all.sample
)
file = URI.open("https://res.cloudinary.com/dayeka7nl/image/upload/v1677764655/Inflatables/t-rex_costume_rt1kkm.png")
inflatable.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
inflatable.save!

inflatable = Inflatable.new(
  title: "SUMO!",
  description: "This hefty getup will have you feeling like a sumo wrestler in no time -
  or at least a very large inflatable balloon. With its oversized proportions and ample padding,
  you'll be able to take on all comers in the ring - or on the dance floor.
  put on your game face and get ready to wrestle with the best of them",
  category: "Costumes",
  price: Faker::Commerce.price,
  user: User.all.sample
)
file = URI.open("https://res.cloudinary.com/dayeka7nl/image/upload/v1677762043/Inflatables/sumo_kxnrmj.png")
inflatable.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
inflatable.save!

inflatable = Inflatable.new(
  title: "Smiling Banana Mascot",
  description: "Peel yourself out of your comfort zone and into the hilarious inflatable smiling banana costume!
  This fruity getup will have you feeling like a snack-tacular sensation - or at least a very happy inflatable banana.
  With its bright yellow color and cartoonish smile, you'll be the top banana of any party or event.
  slip into something comfortable and fruity, and get ready to split some sides.",
  category: "Costumes",
  price: Faker::Commerce.price,
  user: User.all.sample
)
file = URI.open("https://res.cloudinary.com/dayeka7nl/image/upload/v1677764914/Inflatables/banana_iohcw2.png")
inflatable.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
inflatable.save!

inflatable = Inflatable.new(
  title: "Giant Led Inflatable Pig Balloon",
  description: "Oink oink, get ready to light up the party with the inflatable LED pig balloon!!
  This luminous porcine party accessory will have you hogging the spotlight.
  With its bright LED lights and cute giant piggy face, you'll be the center of attention at any celebration.
  So light up your life and let the good times roll - with the inflatable LED pig balloon!",
  category: "Balloons",
  price: Faker::Commerce.price,
  user: User.all.sample
)
file = URI.open("https://res.cloudinary.com/dayeka7nl/image/upload/v1677762772/Inflatables/led_pig_balloon_uqru4i.png")
inflatable.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
inflatable.save!

inflatable = Inflatable.new(
  title: "Cthulhu tentacle",
  description: "Get ready to tentacle your way into a good time with this inflatable octopus tentacle balloon!
  It's like having your very own friendly sea monster to hang out with at your next party.
  unlike a real octopus, this one won't squirt ink all over your guests!",
  category: "Balloons",
  price: Faker::Commerce.price,
  user: User.all.sample
)
file = URI.open("https://res.cloudinary.com/dayeka7nl/image/upload/v1677763480/Inflatables/tentacle_iul3dc.png")
inflatable.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
inflatable.save!

inflatable = Inflatable.new(
  title: "Inflatable Regenbongen",
  description: "With its vibrant colors and whimsical curves, this majestic balloon is all you need!
  One moment it's deflated and sad, and the next it's pumped up and bursting with joy (literally).
  It's like a unicorn's dream come to life, except without the hooves and horn.",
  category: "Balloons",
  price: Faker::Commerce.price,
  user: User.all.sample
)
file = URI.open("https://res.cloudinary.com/dayeka7nl/image/upload/v1677763775/Inflatables/rainbowllon_owq2eo.png")
inflatable.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
inflatable.save!

inflatable = Inflatable.new(
  title: "Unicorn Boat",
  description: "With its vibrant colors and whimsical curves, this majestic balloon is all you need!
  One moment it's deflated and sad, and the next it's pumped up and bursting with joy (literally).
  It's like a unicorn's dream come to life, except without the hooves and horn.",
  category: "Pools",
  price: Faker::Commerce.price,
  user: User.all.sample
)
file = URI.open("https://res.cloudinary.com/dayeka7nl/image/upload/v1677758188/Inflatables/unicorn_boat_bcri6t.jpg")
inflatable.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
inflatable.save!

inflatable = Inflatable.new(
  title: "Chernobyl Simba",
  description: "Those on safari naturally want to see the famous king of the savannah.
  Our inflatable lion ensures the much-needed wildlife feel at your party.
  Also as Simba at the Lion King kids' birthday party, the decorative figure brings lots of party fun.",
  category: "Balloons",
  price: Faker::Commerce.price,
  user: User.all.sample
)
file = URI.open("https://res.cloudinary.com/dayeka7nl/image/upload/v1677766597/Inflatables/simballoon_rfwohz.png")
inflatable.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
inflatable.save!

inflatable = Inflatable.new(
  title: "Jumper",
  description: "Introducing the Gourd-jump Express - the inflatable pumpkin jumping pad that will have.
  you bouncing like a Halloween enthusiast on a sugar rush! This bouncy jack-o'-lantern will
  have you hopping and popping with joy as you catapult through the air like a candy-crazed ghoul.
  So come on, grab your pumpkin spice latte and get ready to pumpkin-jump like it's 1999!",
  category: "Toys",
  price: Faker::Commerce.price,
  user: User.all.sample
)
file = URI.open("https://res.cloudinary.com/dayeka7nl/image/upload/v1677765698/Inflatables/pumpkin_jumping_pad_xjahie.png")
inflatable.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
inflatable.save!

inflatable = Inflatable.new(
  title: "Majestic Bounce-a-Lot Castle",
  description: "Get ready to bounce like royalty as you hop, skip,
  and jump your way through this regal inflatable wonderland.
  The Majestic Bounce-a-Lot Castle is the perfect place to unleash your inner child,
  whether you're a knight in shining armor or a fairy princess.",
  category: "Toys",
  price: Faker::Commerce.price,
  user: User.all.sample
)
file = URI.open("https://res.cloudinary.com/dayeka7nl/image/upload/v1677765698/Inflatables/castle_cy24jt.png")
inflatable.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
inflatable.save!

inflatable = Inflatable.new(
  title: "SpongeBob's Suds-tastic Slide-a-thon",
  description: "A sponge bob slide is like a wild ride through Bikini Bottom!
  It's like sliding down a giant sponge-shaped chute, with your hair bouncing along to the beat of the sea.
  It's a wet and wacky adventure that's sure to make you laugh and leave you with a big grin on your face.
  As you zoom down the slide, you'll feel like you're SpongeBob himself, dodging jellyfish and riding waves.",
  category: "Slides",
  price: Faker::Commerce.price,
  user: User.all.sample
)
file = URI.open("https://res.cloudinary.com/dayeka7nl/image/upload/v1677766969/Inflatables/slide_3_c0sf0z.png")
inflatable.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
inflatable.save!

inflatable = Inflatable.new(
  title: "Slide 3",
  description: "Just a regular slide",
  category: "Slides",
  price: Faker::Commerce.price,
  user: User.all.sample
)
file = URI.open("https://res.cloudinary.com/dayeka7nl/image/upload/v1677766969/Inflatables/slide_2_gvwjde.png")
inflatable.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
inflatable.save!

inflatable = Inflatable.new(
  title: "Freddy the Frog's Flying Bubble",
  description: "Imagine climbing into the belly of a giant inflatable frog, with his round,
  bulging eyes looking down on the world around. The frog's arms and legs are spread wide,
  as if he's ready to take flight at any moment. That's Freddy! Rent and enjoy!",
  category: "Balloons",
  price: Faker::Commerce.price,
  user: User.all.sample
)
file = URI.open("https://res.cloudinary.com/dayeka7nl/image/upload/v1677767933/Inflatables/frog_balloon_sde7ot.png")
inflatable.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
inflatable.save!

inflatable = Inflatable.new(
  title: "Happy Birthday",
  description: "Happy Birthday!",
  category: "Balloons",
  price: Faker::Commerce.price,
  user: User.all.sample
)
file = URI.open("https://res.cloudinary.com/dayeka7nl/image/upload/v1677768071/Inflatables/happy_birthday_p6lubm.png")
inflatable.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
inflatable.save!

inflatable = Inflatable.new(
  title: "Love",
  description: "For loved ones",
  category: "Balloons",
  price: Faker::Commerce.price,
  user: User.all.sample
)
file = URI.open("https://res.cloudinary.com/dayeka7nl/image/upload/v1677768211/Inflatables/heart_balloon_qu2saw.png")
inflatable.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
inflatable.save!
