//
//  File.swift
//  
//
//  Created by Liantao Song on 2022/1/20.
//

import ArgumentParser
import CoreParser
import Foundation

@main
final class CommandLineTool: ParsableCommand {
    @Argument(help: "The xliff file want to parse")
    var xliff: String

    @Argument(help: "The dir for strings and stringsdict file")
    var output: String

    public func run() throws {
        if let url = URL(string: xliff) {
            let parser = XliffParser(url, output: output)
            parser.run()
        }
    }
}
