//
//  Module1View.swift
//  Module1
//
//  Created by Liantao Song on 2022/1/13.
//

import SwiftUI

public struct Module1View: View {
    private var name = "Samuel"
    private var text1: String
    private var text2: LocalizedStringKey

    public init() {
        text1 = String(localized: "Text1: hello \(name) from module1", bundle: .main, comment: "Label: Text1: say hello to 'name'")
        text2 = "Text2 from module1"
    }

    public var body: some View {
        VStack {
            Text(text1)
            Text(text2)
            Text("Text3 from module1", bundle: .main, comment: "Label: show Text3 from module1")
        }
    }
}

struct Module1View_Previews: PreviewProvider {
    static var previews: some View {
        Module1View()
    }
}
