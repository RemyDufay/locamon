require 'poke-api-v2'

    pkmn = PokeApi.get(pokemon: rand(149))
    description = PokeApi.get(pokedex: pkmn.name)
    puts pkmn.name
    puts description.description
