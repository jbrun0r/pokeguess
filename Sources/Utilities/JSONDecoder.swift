import Foundation

func readJSON<T: Decodable>(type: T.Type,  fileName: String) throws -> T {
    
    let scriptURL = URL(fileURLWithPath: #file)
    let currentDirectory = scriptURL.deletingLastPathComponent()
    let jsonFilePath = currentDirectory.appendingPathComponent(fileName).path

    guard let jsonData = try? Data(contentsOf: URL(fileURLWithPath: jsonFilePath)) else {
        throw NSError(domain: "JSONDecodeError", code: 0, userInfo: [NSLocalizedDescriptionKey: "Unable to read file"])
    }

    let decoder = JSONDecoder()
    return try decoder.decode(type, from: jsonData)
}
