//
//  XliffParser.swift
//  CoreParser
//
//  Created by Liantao Song on 2022/1/20.
//

import Foundation
import SWXMLHash

public class XliffParser {
    private let xliff: URL
    private let output: String

    public init(_ xliff: URL, output: String) {
        self.xliff = xliff
        self.output = output
    }

    public func run() {
        do {
            let data = try Data.init(contentsOf: xliff)
            let xml = XMLHash.parse(data)
            print(xml)
        } catch {
            print(error)
        }
    }
}
