class AddSpritetoPokemons < ActiveRecord::Migration[6.1]
  def change
    add_column :pokemons, :sprite_url, :string

  end
end
