# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'open-uri'

url = "https://api.themoviedb.org/3/movie/top_rated?api_key=#{ENV['THE_MOVIE_DB_KEY']}&
language=en-US&page=1"

poster_base_ulr = 'https://image.tmdb.org/t/p/w500'
movie_data = JSON.parse(URI.open(url).read)['results']

movie_data.each do |movie|
  Movie.create!(
    title: movie['title'],
    overview: movie['overview'],
    poster_url: movie['poster_path'],
    raiting:
  )
end
