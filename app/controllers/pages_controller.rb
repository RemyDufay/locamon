class PagesController < ApplicationController
  def home

    @pokemon = Pokemon.new

    @mypokemons = current_user.pokemons


  end
end
