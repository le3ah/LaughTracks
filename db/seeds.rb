require './app/models/comedian'

Comedian.destroy_all

Comedian.create(name: "Dana Carvey", age: 63, city: "Missoula")
comedian.specials.create(special_name: "Straight White Male, 60", run_time: 64, thumbnail: "./views/images/specials/straigh-white-male-60.jpg")

Comedian.create(name: "Jim Gaffigan", age: 52, city: "Elgin")
comedian.specials.create(special_name: "Cinco", run_time: 73, thumbnail: "./views/images/specials/Cinco.jpg")
comedian.specials.create(special_name: "Obsessed", run_time: 79, thumbnail: "./views/images/specials/Obsessed.jpg")
comedian.specials.create(special_name: "Jim Gaffigan: Mr. Universe", run_time: 74, thumbnail: "./views/images/specials/MrUniverse.jpg")

Comedian.create(name: "Trevor Noah", age: 34, city: "Johannesburg")
comedian.specials.create(special_name: "Afraid of the Dark", run_time: 67, thumbnail: "./views/images/specials/afraid-of-dark.jpg")
comedian.specials.create(special_name: "Son of Patricia", run_time: 63, thumbnail: "./views/images/specials/son-of-patricia.jpg")

Comedian.create(name: "Dave Chappelle", age: 45, city: "DC")
comedian.specials.create(special_name: "The Age of Spin", run_time: 67, thumbnail: "./views/images/specials/age-of-spin.jpg")
comedian.specials.create(special_name: "Deep in the Heart of Texas", run_time: 66, thumbnail: "./views/images/specials/deep-in-texas.jpg")
comedian.specials.create(special_name: "Equanimity & the Bird Revelation", run_time: 112, thumbnail: "./views/images/specials/equanimity.jpg")

Comedian.create(name: "Norm MacDonald", age: 59, city: "Quebec City")
comedian.specials.create(special_name: "Hitler's Dog, Gossip & Trickery", run_time: 61, thumbnail: "./views/images/specials/hitlers-dog.jpg")

Comedian.create(name: "Tracy Morgan", age: 50, city: "Brooklyn")
comedian.specials.create(special_name: "Stayling Alive", run_time: 58, thumbnail: "./views/images/specials/staying-alive.jpg")

Comedian.create(name: "Chris D'Elia", age: 38, city: "Montclair")
comedian.specials.create(special_name: "Incorrigible", run_time: 83, thumbnail: "./views/images/specials/incorrigible.jpg")
comedian.specials.create(special_name: "Man on Fire", run_time: 65, thumbnail: "./views/images/specials/man-on-fire.jpg")

Comedian.create(name: "Brian Regan", age: 60, city: "Miami")
comedian.specials.create(special_name: "Nunchucks and Flamethrowers", run_time: 61, thumbnail: "./views/images/specials/nunchucks.jpg")

Comedian.create(name: "Steve Martin", age: 73, city: "Waco")
comedian.specials.create(special_name: "An Evening You Will Forget for the Rest of Your Life", run_time: 73, thumbnail: "./views/images/specials/an-evening-you-will-forget.jpg")
comedian.specials.create(special_name: "The 75th Annual Academy Awards", run_time: 210, thumbnail: "./views/images/specials/75th-academy.JPG")
comedian.specials.create(special_name: "The 73rd Annual Academy Awards", run_time: 203, thumbnail: "./views/images/specials/73rd-academy.jpg")
comedian.specials.create(special_name: "Steve Martin: A Wild and Crazy Guy", run_time: 60, thumbnail: "./views/images/specials/wild-and-crazy-guy.jpg")

Comedian.create(name: "Martin Short", age: 68, city: "Hamilton")
comedian.specials.create(special_name: "An Evening You Will Forget for the Rest of Your Life", run_time: 73, thumbnail: "./views/images/specials/an-evening-you-will-forget.jpg")
comedian.specials.create(special_name: "The Earth Day Special", run_time: 120, thumbnail: "./views/images/specials/earth-day.jpg")

Comedian.create(name: "Iliza Shlesinger", age: 35, city: "Manhattan")
comedian.specials.create(special_name: "War Paint", run_time: 203, thumbnail: "./views/images/specials/war-paint.jpg")
comedian.specials.create(special_name: "Freezing Hot", run_time: 203, thumbnail: "./views/images/specials/freezing-hot.jpg")
comedian.specials.create(special_name: "Elder Millennial", run_time: 203, thumbnail: "./views/images/specials/elder-millennial.jpg")

Comedian.create(name: "Adam Sandler", age: 52, city: "Brooklyn")
comedian.specials.create(special_name: "100% Fresh", run_time: 203, thumbnail: "./views/images/specials/100-fresh.jpg")
