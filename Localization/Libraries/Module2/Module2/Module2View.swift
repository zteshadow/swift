//
//  Module2View.swift
//  Module2
//
//  Created by Liantao Song on 2022/1/13.
//

import SwiftUI

public struct Module2View: View {
    public init() {}
    public var body: some View {
        VStack {
            Text("Hello from module2!", comment: "Label say hello from module2")
            Text("Text from module2", comment: "Label: text from module2")
            Text("Text2 from module2", comment: "Label: text2 from module2")
        }
    }
}

struct Module2View_Previews: PreviewProvider {
    static var previews: some View {
        Module2View()
    }
}
