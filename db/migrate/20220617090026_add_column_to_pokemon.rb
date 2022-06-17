class AddColumnToPokemon < ActiveRecord::Migration[6.1]
  def change
    add_column :pokemons, :type, :string
  end
end
