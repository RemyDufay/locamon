require 'poke-api-v2'

class PokemonsController < ApplicationController
  def index

  end

  def show
    pkmn = Pokemon.find(params[:id])
    @name =  pkmn.name
    @sprite = pkmn.sprite_url


  end

  def create
    pkmn = PokeApi.get(pokemon: rand(149))
    @name =  pkmn.name
    @sprite = pkmn.sprites.front_default
    @element = pkmn.types.first.type.name
    pokemon = Pokemon.new(name: @name, sprite_url: @sprite, element: @element )
    pokemon.save!

    catching = Catch.create!(user_id: current_user.id, pokemon_id: pokemon.id)

    redirect_to user_catch_path(user_id: current_user, id: catching)
  end

end
