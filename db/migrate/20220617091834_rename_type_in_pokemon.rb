class RenameTypeInPokemon < ActiveRecord::Migration[6.1]
  def change
    rename_column :pokemons, :type, :element

  end
end
