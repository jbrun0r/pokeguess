import Foundation

func list() {
    do {
        let pokemons: [Pokemon] = try readJSON(type: [Pokemon].self, fileName: "data")
        
        let column = formatString(header[0]) + "║"
        
        print()
        printLine(column.count)
        print(column)
        printLine(column.count)
        
        for pokemon in pokemons {
            print(formatString(pokemon.name.capitalized) + "║")
        }
        
        printLine(column.count)
        print()
        
    } catch {
        print(error)
    }
}
