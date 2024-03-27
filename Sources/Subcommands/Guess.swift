import Foundation

func guess(_ pokemonName: String) {
    do {
        let pokemons: [Pokemon] = try readJSON(type: [Pokemon].self, fileName: "data")
        let targetPokemonId: Int = try readJSON(type: Int.self, fileName: "target")
        
        guard let enteredPokemon = pokemons.first(where: { $0.name == pokemonName.lowercased() }),
            let targetPokemon = pokemons.first(where: { $0.id == targetPokemonId }) else {
            print("Entered or target Pokémon not found.")
            return
        }

        let (result, isEqual) = comparePokemons(enteredPokemon, targetPokemon, useColors: true)
        
        saveHistory(result)
        
        printHeader()
        print(result)
        printLine(formattedHeader.count)
        print()
        
        if isEqual {
           
            print(targetPokemon.sprite)
            printCongratulations()
            resetHistory()
            sortNewPokemon(pokemons.count)
        }

    } catch {
        print(error)
    }
}
