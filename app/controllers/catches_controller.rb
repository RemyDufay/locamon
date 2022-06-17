class CatchesController < ApplicationController
  def show
    catched = Catch.find(params[:id])
    pkmn = catched.pokemon
    @name =  pkmn.name
    @sprite = pkmn.sprite_url

  end
end
