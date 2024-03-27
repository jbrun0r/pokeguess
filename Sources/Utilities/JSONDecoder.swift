import Foundation

func readJSON<T: Decodable>(type: T.Type, fileName: String) throws -> T {
    let bundle = Bundle.module

    guard let jsonURL = bundle.url(forResource: fileName, withExtension: "json") else {
        fatalError("JSON file not found in the bundle.")
    }

    guard let jsonData = try? Data(contentsOf: jsonURL) else {
        throw NSError(domain: "JSONDecodeError", code: 0, userInfo: [NSLocalizedDescriptionKey: "Unable to read file"])
    }

    let decoder = JSONDecoder()
    return try decoder.decode(type, from: jsonData)
}
