class ChangePokemon < ActiveRecord::Migration[6.1]
  def change
    remove_reference :pokemons, :type, index: true, foreign_key: true
  end
end
