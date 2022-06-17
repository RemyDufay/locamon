require 'poke-api-v2'

    pkmn = PokeApi.get(pokemon: rand(149))
    puts pkmn.name
    puts pkmn.sprites
