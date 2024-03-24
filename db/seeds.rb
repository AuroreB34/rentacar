# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# db/seeds.rb

# User.create!([
#   { name: "Dodo", email: "Subaru@gmail.fr", adress: "Outback land", profile_pic: "https://images.unsplash.com/photo-1529665253569-6d01c0eaf7b6?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8cHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D" },
# ])


# Création de plusieurs voitures
Car.create!([
  { matriculation: "ABC1389", brand: "Toyota", model: "Corolla", year: 2018, user_id: 1, photo: "https://i.gaw.to/content/photos/33/52/335238_2018_Toyota_Corolla.jpg" },
  { matriculation: "XYZ5645", brand: "Honda", model: "Civic", year: 2019, user_id: 1, photo: "https://auto.honda.fr/content/dam/central/cars/civic-hybrid/overview-v3/Honda-civic-hybrid-01-1x1-mobile.jpg/_jcr_content/renditions/m_r.jpg" },
  { matriculation: "DE78945", brand: "Ford", model: "Mustang", year: 2020, user_id: 1, photo: "https://www.largus.fr/images/images/2018-ford-mustang-1.jpg" },
  { matriculation: "D23F989", brand: "Subaru", model: "Outback", year: 2019, user_id: 1, photo: "https://www.turbo.fr/sites/default/files/2023-01/11_essai_subaru_outback_2023.JPG" },
  # Ajoutez autant de voitures que nécessaire
])
