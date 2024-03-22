import Foundation

func hint() {
    do {
        let pokemons: [Pokemon] = try readJSON(type: [Pokemon].self, fileName: "data.json")
        let targetPokemonId: Int = try readJSON(type: Int.self, fileName: "target.json")
        
        guard let targetPokemon = pokemons.first(where: { $0.id == targetPokemonId }) else {
            print("Target Pokemon not found.")
            return
        }
        print("\n\(formatString("Hint"))")
        print("| \(Color.yellow.rawValue)\(targetPokemon.hint)\u{001B}[0m\n")

    } catch {
        print(error)
    }
}
