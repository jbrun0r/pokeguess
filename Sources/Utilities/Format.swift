import Foundation


enum Color: String {
    case red = "\u{001B}[31m"
    case green = "\u{001B}[32m"
}


func formatString(_ inputString: String, _ color: Color? = nil) -> String {
    var formattedString: String = inputString
    let spacesToAdd = max(0, 18 - formattedString.count)
    if color != nil{
        formattedString = "\(color!.rawValue)\(formattedString)\u{001B}[0m"
    }
    let spaces = String(repeating: " ", count: spacesToAdd)
    return "| " + formattedString + spaces
}
