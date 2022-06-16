require 'poke-api-v2'

class PokemonController < ApplicationController
  def index
    pkmn = PokeApi.get(pokemon: rand(149))
    @name =  pkmn.name
    @sprite = pkmn.sprites.front_default

  end

  def show
  end
end
