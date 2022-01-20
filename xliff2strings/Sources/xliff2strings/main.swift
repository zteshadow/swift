
import CoreParser

let tool = CommandLineTool()

do {
    try tool.run()
} catch {
    print("Whoops! error occured: \(error)")
}

