import Foundation

func info(_ pokemonName: String) {
    do {
        let pokemons: [Pokemon] = try readJSON(type: [Pokemon].self, fileName: "data.json")

        guard let searchedPokemon = pokemons.first(where: { $0.name == pokemonName }) else {
            print("Searched Pokémon not found.")
            return
        }

        printHeader()

        let (formattedPokemonInfo, flag) = comparePokemons(searchedPokemon, searchedPokemon, useColors: false)
        
        if flag {
            print(formattedPokemonInfo)
            printLine(formattedHeader.count)
            
            print("\n"+searchedPokemon.sprite)
            
            print("About: \(searchedPokemon.hint)\n\n")
        }
        
    } catch {
        print(error)
    }
}
