//
//  Module2View.swift
//  Module2
//
//  Created by Liantao Song on 2022/1/13.
//

import SwiftUI

public struct Module2View: View {
    private var count = 3
    private var pluralText: String

    public init() {
        pluralText = String(localized: "Text4: \(count) ticket(s) from module2", comment: "Label: amount of tickets")
    }
    public var body: some View {
        VStack {
            Text(pluralText)
        }
    }
}

struct Module2View_Previews: PreviewProvider {
    static var previews: some View {
        Module2View().environment(\.locale, .init(identifier: "zh-Hans"))
    }
}
