//
//  Module1View.swift
//  Module1
//
//  Created by Liantao Song on 2022/1/13.
//

import SwiftUI

public struct Module1View: View {
    private var count = 3
    private var text1: String
    private var text2: LocalizedStringKey

    public init() {
        text1 = String(localized: "\(count) ticket(s)", bundle: .main, comment: "Label: quantities of tickets")
        text2 = "Hello text2 from module1"
    }

    public var body: some View {
        VStack {
            Text("Hello from module1!", bundle: .main, comment: "Label: show hello from module1")
            Text(text1)
            Text(text2)
        }
    }
}

struct Module1View_Previews: PreviewProvider {
    static var previews: some View {
        Module1View()
    }
}
