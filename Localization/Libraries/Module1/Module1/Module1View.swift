//
//  Module1View.swift
//  Module1
//
//  Created by Liantao Song on 2022/1/13.
//

import SwiftUI

public struct Module1View: View {
    private var count = 3
    private var text: String

    public init() {
        text = String(localized: "\(count) ticket(s)", comment: "Label: quantities of tickets")
    }
    public var body: some View {
        VStack {
            Text("Hello from module1!")
            Text(text)
        }
    }
}

struct Module1View_Previews: PreviewProvider {
    static var previews: some View {
        Module1View()
    }
}
