# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Flat.destroy_all

image_urls = [
  "https://images.unsplash.com/photo-1526000130-b9ea509bfbf3?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aG91c2VzfGVufDB8fDB8fHww",
  "https://images.unsplash.com/photo-1489370321024-e0410ad08da4?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8aG91c2VzfGVufDB8fDB8fHww",
  "https://images.unsplash.com/photo-1504971588239-ba9c6ac9097f?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8aG91c2VzfGVufDB8fDB8fHww",
  "https://images.unsplash.com/photo-1457794355224-e92bb76cec4c?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fGhvdXNlc3xlbnwwfHwwfHx8MA%3D%3D",
  "https://images.unsplash.com/photo-1519227355453-8f982e425321?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fGhvdXNlc3xlbnwwfHwwfHx8MA%3D%3D",
  "https://images.unsplash.com/photo-1491557345352-5929e343eb89?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTV8fGhvdXNlc3xlbnwwfHwwfHx8MA%3D%3D",
  "https://plus.unsplash.com/premium_photo-1730736996659-71abad775871?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTd8fGhvdXNlc3xlbnwwfHwwfHx8MA%3D%3D",
  "https://images.unsplash.com/photo-1485882625162-1c18673eba1a?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTl8fGhvdXNlc3xlbnwwfHwwfHx8MA%3D%3D",
  "https://images.unsplash.com/photo-1499678329028-101435549a4e?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTh8fGhvdXNlc3xlbnwwfHwwfHx8MA%3D%3D",
  "https://images.unsplash.com/photo-1457794355224-e92bb76cec4c?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fGhvdXNlc3xlbnwwfHwwfHx8MA%3D%3D",
  "https://images.unsplash.com/photo-1519227355453-8f982e425321?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fGhvdXNlc3xlbnwwfHwwfHx8MA%3D%3D",
]

4.times do
  name = Faker::Address.community
  address = Faker::Address.full_address
  description = Faker::ChuckNorris.fact
  price_per_night = rand(30..250)
  number_of_guests = rand(2..5)
  image_url = image_urls.sample
  Flat.create!(
    name:,
    address:,
    description:,
    price_per_night:,
    number_of_guests:,
    image_url:
  )
end
