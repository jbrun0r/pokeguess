import Foundation

func guess(_ pokemonName: String) {
    do {
        let pokemons: [Pokemon] = try readJSON(type: [Pokemon].self, fileName: "data.json")
        let targetPokemonId: Int = try readJSON(type: Int.self, fileName: "target.json")
        
        guard let enteredPokemon = pokemons.first(where: { $0.name == pokemonName }),
            let targetPokemon = pokemons.first(where: { $0.id == targetPokemonId }) else {
            print("Entered or target Pokémon not found.")
            return
        }

        let (result, isEqual) = comparePokemons(enteredPokemon, targetPokemon)
        
        saveHistory(result)
        
        printColumns()
        print(result)

        if isEqual {
            resetHistory()
            sortNewPokemon(pokemons.count)
        }

    } catch {
        print(error)
    }
}
