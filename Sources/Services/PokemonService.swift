import Foundation

func comparePokemons(_ entered: Pokemon, _ target: Pokemon) -> (String, Bool) {
    
    var concatenatedAtt: String = formatString(entered.name)
    var isEqual: Bool = false
    
    if entered.id == target.id {
        isEqual = true
        concatenatedAtt = formatString(entered.name, Color.green)
    }
    
    
    for i in 0...1 {
        if entered.types[i] == target.types[0] || entered.types[i] == target.types[1]{
            concatenatedAtt += formatString(entered.types[i], Color.green)
        } else{
            concatenatedAtt += formatString(entered.types[i], Color.red)
        }
    }
    
    for i in 0...1 {
        if entered.abilities[i] == target.abilities[0] || entered.abilities[i] == target.abilities[1]{
            concatenatedAtt += formatString(entered.abilities[i], Color.green)
        } else{
            concatenatedAtt += formatString(entered.abilities[i], Color.red)
        }
    }
    
    if entered.primary_color == target.primary_color {
        concatenatedAtt += formatString(entered.primary_color, Color.green)
    } else {
        concatenatedAtt += formatString(entered.primary_color, Color.red)
    }
    
    if entered.habitat == target.habitat {
        concatenatedAtt += formatString(entered.habitat, Color.green)
    } else {
        concatenatedAtt += formatString(entered.habitat, Color.red)
    }
    
    if entered.evolution_stage == target.evolution_stage {
        concatenatedAtt += formatString("\(entered.evolution_stage)", Color.green)
    } else if entered.evolution_stage < target.evolution_stage {
        concatenatedAtt += formatString("\(entered.evolution_stage) ⬆", Color.red)
    } else {
        concatenatedAtt += formatString("\(entered.evolution_stage) ⬇", Color.red)
    }
    
    let entereHeight: String = String(format: "%.1f", entered.height / 10)
    if entered.height == target.height {
        concatenatedAtt += formatString(entereHeight, Color.green)
    } else if entered.height < target.height {
        concatenatedAtt += formatString(entereHeight + "m ⬆", Color.red)
    } else {
        concatenatedAtt += formatString(entereHeight + "m ⬇", Color.red)
    }
    
    let enteredWeight: String = String(format: "%.1f", entered.weight / 10)
    if entered.weight == target.weight {
        concatenatedAtt += formatString(enteredWeight, Color.green)
    } else if entered.weight < target.weight {
        concatenatedAtt += formatString(enteredWeight + "kg ⬆", Color.red)
    } else {
        concatenatedAtt += formatString(enteredWeight + "kg ⬇", Color.red)
    }
    
    
    return (concatenatedAtt, isEqual)
}

