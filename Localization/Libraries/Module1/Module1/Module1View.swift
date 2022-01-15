//
//  Module1View.swift
//  Module1
//
//  Created by Liantao Song on 2022/1/13.
//

import SwiftUI

public struct Module1View: View {
    public init() {}
    public var body: some View {
        Text("Hello from module1!")
    }
}

struct Module1View_Previews: PreviewProvider {
    static var previews: some View {
        Module1View().environment(\.locale, .init(identifier: "zh-Hans"))
    }
}
