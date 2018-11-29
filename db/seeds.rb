require './app/models/comedian'
require './app/models/special'

Comedian.destroy_all

comedian_1 = Comedian.create(name: "Dana Carvey", age: 63, city: "Missoula")
comedian_1.specials.create(special_name: "Straight White Male, 60", run_time: 64, thumbnail: "/images/specials/straigh-white-male-60.jpg")

comedian_2 = Comedian.create(name: "Jim Gaffigan", age: 52, city: "Elgin")
comedian_2.specials.create(special_name: "Cinco", run_time: 73, thumbnail: "/images/specials/Cinco.jpg")
comedian_2.specials.create(special_name: "Obsessed", run_time: 79, thumbnail: "/images/specials/Obsessed.jpg")
comedian_2.specials.create(special_name: "Jim Gaffigan: Mr. Universe", run_time: 74, thumbnail: "/images/specials/MrUniverse.jpg")

comedian_3 = Comedian.create(name: "Trevor Noah", age: 34, city: "Johannesburg")
comedian_3.specials.create(special_name: "Afraid of the Dark", run_time: 67, thumbnail: "/images/specials/afraid-of-dark.jpg")
comedian_3.specials.create(special_name: "Son of Patricia", run_time: 63, thumbnail: "/images/specials/son-of-patricia.jpg")

comedian_4 = Comedian.create(name: "Dave Chappelle", age: 45, city: "DC")
comedian_4.specials.create(special_name: "The Age of Spin", run_time: 67, thumbnail: "/images/specials/age-of-spin.jpg")
comedian_4.specials.create(special_name: "Deep in the Heart of Texas", run_time: 66, thumbnail: "/images/specials/deep-in-texas.jpg")
comedian_4.specials.create(special_name: "Equanimity & the Bird Revelation", run_time: 112, thumbnail: "/images/specials/equanimity.jpg")

comedian_5 = Comedian.create(name: "Norm MacDonald", age: 59, city: "Quebec City")
comedian_5.specials.create(special_name: "Hitler's Dog, Gossip & Trickery", run_time: 61, thumbnail: "/images/specials/hitlers-dog.jpg")

comedian_6 = Comedian.create(name: "Tracy Morgan", age: 50, city: "Brooklyn")
comedian_6.specials.create(special_name: "Stayling Alive", run_time: 58, thumbnail: "/images/specials/staying-alive.jpg")

comedian_7 = Comedian.create(name: "Chris D'Elia", age: 38, city: "Montclair")
comedian_7.specials.create(special_name: "Incorrigible", run_time: 83, thumbnail: "/images/specials/incorrigible.jpg")
comedian_7.specials.create(special_name: "Man on Fire", run_time: 65, thumbnail: "/images/specials/man-on-fire.jpg")

comedian_8 = Comedian.create(name: "Brian Regan", age: 60, city: "Miami")
comedian_8.specials.create(special_name: "Nunchucks and Flamethrowers", run_time: 61, thumbnail: "/images/specials/nunchucks.jpg")

comedian_9 = Comedian.create(name: "Steve Martin", age: 73, city: "Waco")
comedian_9.specials.create(special_name: "An Evening You Will Forget for the Rest of Your Life", run_time: 73, thumbnail: "/images/specials/an-evening-you-will-forget.jpg")
comedian_9.specials.create(special_name: "The 75th Annual Academy Awards", run_time: 210, thumbnail: "/images/specials/75th-academy.JPG")
comedian_9.specials.create(special_name: "The 73rd Annual Academy Awards", run_time: 203, thumbnail: "/images/specials/73rd-academy.jpg")
comedian_9.specials.create(special_name: "Steve Martin: A Wild and Crazy Guy", run_time: 60, thumbnail: "/images/specials/wild-and-crazy-guy.jpg")

comedian_10 = Comedian.create(name: "Martin Short", age: 68, city: "Hamilton")
comedian_10.specials.create(special_name: "An Evening You Will Forget for the Rest of Your Life", run_time: 73, thumbnail: "/images/specials/an-evening-you-will-forget.jpg")
comedian_10.specials.create(special_name: "The Earth Day Special", run_time: 120, thumbnail: "/images/specials/earth-day.jpg")

comedian_11 = Comedian.create(name: "Iliza Shlesinger", age: 35, city: "Manhattan")
comedian_11.specials.create(special_name: "War Paint", run_time: 75, thumbnail: "/images/specials/war-paint.jpg")
comedian_11.specials.create(special_name: "Freezing Hot", run_time: 71, thumbnail: "/images/specials/freezing-hot.jpg")
comedian_11.specials.create(special_name: "Elder Millennial", run_time: 72, thumbnail: "/images/specials/elder-millennial.jpg")

comedian_12 = Comedian.create(name: "Adam Sandler", age: 52, city: "Brooklyn")
comedian_12.specials.create(special_name: "100% Fresh", run_time: 73, thumbnail: "/images/specials/100-fresh.jpg")
