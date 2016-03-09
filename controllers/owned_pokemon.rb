require_relative('../models/pokemon.rb')
require_relative('../models/trainer.rb')

require_relative('../models/owned_pokemon.rb')


#new
get '/owned_pokemon/new' do
  @pokemons = Pokemon.all
  @trainers = Trainer.all
  erb(:"owned_pokemon/new")
end

#create
post '/owned_pokemon' do

  @owned_pokemon =OwnedPokemon.new(params)
  @owned_pokemon.save()
end

get '/owned_pokemon' do
  @owned_pokemon = OwnedPokemon.all
  erb(:"owned_pokemon/index")
end

