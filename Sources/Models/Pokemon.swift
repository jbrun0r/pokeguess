import Foundation

struct Pokemon: Codable {
    let id: Int
    let name: String
    let types: [String]
    let abilities: [String]
    let primaryColor: String
    let habitat: String
    let evolutionStage: Int
    let height: Double
    let weight: Double
    let hint: String
    let sprite: String
}
