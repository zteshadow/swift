//
//  Bundle+Extension.swift
//  Module1
//
//  Created by Liantao Song on 2022/1/17.
//

import class Foundation.Bundle

private class BundleFinder {}

extension Foundation.Bundle {
    /// Returns the resource bundle associated with the current Swift module.
    static var module: Bundle = Bundle(for: BundleFinder.self)
}
