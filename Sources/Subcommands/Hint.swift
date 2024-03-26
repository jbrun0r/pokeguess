import Foundation

func hint() {
    do {
        let pokemons: [Pokemon] = try readJSON(type: [Pokemon].self, fileName: "data.json")
        let targetPokemonId: Int = try readJSON(type: Int.self, fileName: "target.json")
        
        guard let targetPokemon = pokemons.first(where: { $0.id == targetPokemonId }) else {
            print("Target Pokemon not found.")
            return
        }
        
        let formattedHint = formatString(targetPokemon.hint) + " ║"
        
        print()
        printLine(formattedHint.count)
        print(formatString("Hint", nil, formattedHint.count-3) + "║")
        printLine(formattedHint.count)
        print(formattedHint)
        printLine(formattedHint.count)
        print()

    } catch {
        print(error)
    }
}
