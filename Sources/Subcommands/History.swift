import Foundation

func hist() {
    do {
        let history: [String] = try readJSON(type: [String].self, fileName: "history")
        
        printHeader()
        
        for item in history {
            print(item)
        }
        
        printLine(formattedHeader.count)
        print()
        
    } catch {
        print(error)
    }
}
