import Foundation


func writeJSON<T: Encodable>(_ data: T, to fileName: String) throws {
    let scriptURL = URL(fileURLWithPath: #file)
    let currentDirectory = scriptURL.deletingLastPathComponent()
    let jsonFilePath = currentDirectory.appendingPathComponent(fileName).path

    let encoder = JSONEncoder()
    encoder.outputFormatting = .prettyPrinted
    let jsonData = try encoder.encode(data)
    try jsonData.write(to: URL(fileURLWithPath: jsonFilePath))
}
