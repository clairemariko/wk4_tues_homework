require( 'sinatra' )
require( 'pry-byebug' )
require_relative('controllers/trainers_controller')
require_relative('controllers/pokemons_controller')
require_relative('controllers/owned_pokemon.rb')
require 'sinatra/contrib/all' if development?

get '/' do
  erb :"home"
end





