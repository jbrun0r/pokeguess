import Foundation

func hist() {
    do {
        let history: [String] = try readJSON(type: [String].self, fileName: "history.json")
        
        printColumns()
        
        for item in history {
            print(item)
        }
        
    } catch {
        print(error)
    }
}
