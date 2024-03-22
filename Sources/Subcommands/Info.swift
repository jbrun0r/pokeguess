import Foundation

func info(_ pokemonName: String) {
    do {
        let pokemons: [Pokemon] = try readJSON(type: [Pokemon].self, fileName: "data.json")
        
        guard let searchedPokemon = pokemons.first(where: { $0.name == pokemonName }) else {
            print("Searched Pokémon not found.")
            return
        }

        printColumns()

        let (formattedPokemonInfo, flag) = comparePokemons(searchedPokemon, searchedPokemon, useColors: false)
        
        print(formattedPokemonInfo)
        
        print("About: \(searchedPokemon.hint)")
        
    } catch {
        print(error)
    }
}
