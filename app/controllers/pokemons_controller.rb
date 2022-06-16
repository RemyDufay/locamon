require 'poke-api-v2'

class PokemonsController < ApplicationController
  def index

  end

  def show
    pkmn = Pokemon.where(params[:id])
    @name =  pkmn.name
    @sprite = pkmn.sprites.front_default

  end

  def create
    pkmn = PokeApi.get(pokemon: rand(149))
    @name =  pkmn.name
    @sprite = pkmn.sprites.front_default
    @type = 
    pokemon = Pokemon.new(name: @name, sprite_url: @sprite )
    pokemon.save!
    redirect_to pokemon_path(pkmn)
  end

end
