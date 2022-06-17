class AddStatsToPokemon < ActiveRecord::Migration[6.1]
  def change
    add_column :pokemons, :pv, :integer
    add_column :pokemons, :strength, :integer
    add_column :pokemons, :defense, :integer
  end
end
