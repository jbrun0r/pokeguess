import Foundation

func list() {
    do {
        let pokemons: [Pokemon] = try readJSON(type: [Pokemon].self, fileName: "data.json")
        
        print("All available Pokémon:")
        
        for pokemon in pokemons {
            print("- \(pokemon.name.capitalized)")
        }

    } catch {
        print(error)
    }
}
