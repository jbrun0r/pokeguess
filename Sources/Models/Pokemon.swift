import Foundation

struct Pokemon: Codable  {
    let id: Int
    let name: String
    let types: [String]
    let abilities: [String]
    let primary_color: String
    let habitat: String
    let evolution_stage: Int
    let height: Double
    let weight: Double
    let hint: String
    
    
    let sprite: String
}
