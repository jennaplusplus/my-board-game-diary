# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Game info
# t.string   "name"
# t.float    "time_to_play"
# t.string   "genre"
# t.integer  "min_players"
# t.integer  "max_players"

games = [
  { name: "The Settlers of Catan",  time_to_play: 1.5,  genre: "strategy",    min_players: 3, max_players: 4 },
  { name: "Pandemic",               time_to_play: 1.5,  genre: "co-op",       min_players: 2, max_players: 4 },
  { name: "Battlestar Galactica",   time_to_play: 4,    genre: "thematic",    min_players: 3, max_players: 6 },
  { name: "Power Grid",             time_to_play: 2.5,  genre: "strategy",    min_players: 2, max_players: 6 },
]

games.each do |game|
  Game.create(game)
end
