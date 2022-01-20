//
//  File.swift
//  
//
//  Created by Liantao Song on 2022/1/20.
//

import Foundation

public final class CommandLineTool {
    private let arguments: [String]

    public init(arguments: [String] = CommandLine.arguments) {
        self.arguments = arguments
    }

    public func run() throws {
        print("Hi")
    }
}
