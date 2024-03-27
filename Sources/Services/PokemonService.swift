import Foundation

func comparePokemons(_ entered: Pokemon, _ target: Pokemon, useColors: Bool) -> (String, Bool) {
    
    var concatenatedAtt: String = formatString(entered.name.capitalized)
    var isEqual: Bool = false
    
    if entered.id == target.id {
        isEqual = true
        concatenatedAtt = formatString(entered.name.capitalized, useColors ? .green : nil)
    }
    
    for i in 0...1 {
        if entered.types[i] == target.types[0] || entered.types[i] == target.types[1] {
            concatenatedAtt += formatString(entered.types[i], useColors ? .green : nil)
        } else {
            concatenatedAtt += formatString(entered.types[i], useColors ? .red : nil)
        }
    }
    
    for i in 0...1 {
        if entered.abilities[i] == target.abilities[0] || entered.abilities[i] == target.abilities[1] {
            concatenatedAtt += formatString(entered.abilities[i], useColors ? .green : nil)
        } else {
            concatenatedAtt += formatString(entered.abilities[i], useColors ? .red : nil)
        }
    }
    
    if entered.primaryColor == target.primaryColor {
        concatenatedAtt += formatString(entered.primaryColor, useColors ? .green : nil)
    } else {
        concatenatedAtt += formatString(entered.primaryColor, useColors ? .red : nil)
    }
    
    if entered.habitat == target.habitat {
        concatenatedAtt += formatString(entered.habitat, useColors ? .green : nil)
    } else {
        concatenatedAtt += formatString(entered.habitat, useColors ? .red : nil)
    }
    
    if entered.evolutionStage == target.evolutionStage {
        concatenatedAtt += formatString("\(entered.evolutionStage)", useColors ? .green : nil)
    } else if entered.evolutionStage < target.evolutionStage {
        concatenatedAtt += formatString("\(entered.evolutionStage) ⬆", useColors ? .red : nil)
    } else {
        concatenatedAtt += formatString("\(entered.evolutionStage) ⬇", useColors ? .red : nil)
    }
    
    let enteredHeight: String = String(format: "%.1f", entered.height / 10) + "m"
    
    if entered.height == target.height {
        concatenatedAtt += formatString(enteredHeight, useColors ? .green : nil)
    } else if entered.height < target.height {
        concatenatedAtt += formatString(enteredHeight + " ⬆", useColors ? .red : nil)
    } else {
        concatenatedAtt += formatString(enteredHeight + " ⬇", useColors ? .red : nil)
    }
    
    let enteredWeight: String = String(format: "%.1f", entered.weight / 10) + "kg"
    
    if entered.weight == target.weight {
        concatenatedAtt += formatString(enteredWeight, useColors ? .green : nil)
    } else if entered.weight < target.weight {
        concatenatedAtt += formatString(enteredWeight + " ⬆", useColors ? .red : nil)
    } else {
        concatenatedAtt += formatString(enteredWeight + " ⬇", useColors ? .red : nil)
    }
    
    return (concatenatedAtt + "║", isEqual)
}

func sortNewPokemon(_ lenght: Int) {
    do {
        let randomId = Int.random(in: 1...lenght)
        try writeJSON(randomId, to: "target")
    } catch {
        print("Sort new pokémon error: \(error)")
    }
}

func saveHistory(_ result: String) {
    do {
        var history: [String] = try readJSON(type: [String].self, fileName: "history")
        
        history.append(result)
        
        try writeJSON(history, to: "history")
    } catch {
        print("History save error: \(error)")
    }
}

func resetHistory() {
    do {
        let emptyList: [String] = []
        
        try writeJSON(emptyList, to: "history")
        
    } catch {
        print("History save error: \(error)")
    }
}
