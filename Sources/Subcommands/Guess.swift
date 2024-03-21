import Foundation

func guess(_ pokemonName: String) -> Void {
    do {
        let pokemons: [Pokemon] = try readJSON(type: [Pokemon].self, fileName: "data.json")
        let targetPokemonId: Int = try readJSON(type: Int.self, fileName: "target.json")
        
        guard let enteredPokemon = pokemons.first(where: { $0.name == pokemonName }),
              let targetPokemon = pokemons.first(where: { $0.id == targetPokemonId }) else {
            print("Entered or target Pokémon not found.")
            return
        }

        let (result, isEqual) = comparePokemons(enteredPokemon, targetPokemon)
        print(formatString("Name") + formatString("Type1") + formatString("Type2") + formatString("Ability1") + formatString("Ability2") + formatString("Primary Color") + formatString("Habitat") + formatString("Evolution Stage") + formatString("Height") + formatString("Weight"))
        print(result)

        if isEqual {
            sortNewPokemon(pokemons.count)
        }

    } catch {
        print(error)
    }
}
