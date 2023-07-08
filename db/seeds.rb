require 'open-uri'
require 'json'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Clearing database"

Movie.destroy_all

puts "creating movies..."

url = "https://tmdb.lewagon.com/movie/top_rated"
user_serialized = URI.open(url).read
movies = JSON.parse(user_serialized)


movies["results"].each do |result|
  Movie.create(
    title: result["title"],
    overview: result["overview"],
    poster_url: result["poster_path"],
    rating: result["vote_average"]
  )
end

puts "Finished!"
