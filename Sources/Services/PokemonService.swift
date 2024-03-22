import Foundation

func comparePokemons(_ entered: Pokemon, _ target: Pokemon) -> (String, Bool) {
    
    var concatenatedAtt: String = formatString(entered.name)
    var isEqual: Bool = false
    
    if entered.id == target.id {
        isEqual = true
        concatenatedAtt = formatString(entered.name, Color.green)
    }
    
    for i in 0...1 {
        if entered.types[i] == target.types[0] || entered.types[i] == target.types[1] {
            concatenatedAtt += formatString(entered.types[i], Color.green)
        } else {
            concatenatedAtt += formatString(entered.types[i], Color.red)
        }
    }
    
    for i in 0...1 {
        if entered.abilities[i] == target.abilities[0] || entered.abilities[i] == target.abilities[1] {
            concatenatedAtt += formatString(entered.abilities[i], Color.green)
        } else {
            concatenatedAtt += formatString(entered.abilities[i], Color.red)
        }
    }
    
    if entered.primaryColor == target.primaryColor {
        concatenatedAtt += formatString(entered.primaryColor, Color.green)
    } else {
        concatenatedAtt += formatString(entered.primaryColor, Color.red)
    }
    
    if entered.habitat == target.habitat {
        concatenatedAtt += formatString(entered.habitat, Color.green)
    } else {
        concatenatedAtt += formatString(entered.habitat, Color.red)
    }
    
    if entered.evolutionStage == target.evolutionStage {
        concatenatedAtt += formatString("\(entered.evolutionStage)", Color.green)
    } else if entered.evolutionStage < target.evolutionStage {
        concatenatedAtt += formatString("\(entered.evolutionStage) ⬆", Color.red)
    } else {
        concatenatedAtt += formatString("\(entered.evolutionStage) ⬇", Color.red)
    }
    
    let entereHeight: String = String(format: "%.1f", entered.height / 10) + "m"
    
    if entered.height == target.height {
        concatenatedAtt += formatString(entereHeight, Color.green)
    } else if entered.height < target.height {
        concatenatedAtt += formatString(entereHeight + " ⬆", Color.red)
    } else {
        concatenatedAtt += formatString(entereHeight + " ⬇", Color.red)
    }
    
    let enteredWeight: String = String(format: "%.1f", entered.weight / 10) + "kg"
    
    if entered.weight == target.weight {
        concatenatedAtt += formatString(enteredWeight, Color.green)
    } else if entered.weight < target.weight {
        concatenatedAtt += formatString(enteredWeight + " ⬆", Color.red)
    } else {
        concatenatedAtt += formatString(enteredWeight + " ⬇", Color.red)
    }
    
    return (concatenatedAtt, isEqual)
}

func sortNewPokemon(_ lenght: Int) {
    do {
        let randomId = Int.random(in: 1...lenght)
        try writeJSON(randomId, to: "target.json")
    } catch {
        print("Sort new pokémon error: \(error)")
    }
}

func saveHistory(_ result: String) {
    do {
        var history: [String] = try readJSON(type: [String].self, fileName: "history.json")
        
        history.append(result)
        
        try writeJSON(history, to: "history.json")
    } catch {
        print("History save error: \(error)")
    }
}

func resetHistory() {
    do {
        let emptyList: [String] = []
        
        try writeJSON(emptyList, to: "history.json")
        
    } catch {
        print("History save error: \(error)")
    }
}

func printColumns() {
    let columnNames = [
        "Name", "Type1", "Type2", "Ability1", "Ability2",
        "Primary Color", "Habitat", "Evolution Stage",
        "Height", "Weight"
    ]

    let formattedColumnNames = columnNames.map { formatString($0) }.joined()
    
    print(formattedColumnNames)
}
