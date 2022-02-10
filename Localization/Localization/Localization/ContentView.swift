//
//  ContentView.swift
//  Localization
//
//  Created by Liantao Song on 2022/1/13.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Text5 Hello, world, from main target", comment: "Label: say hello")
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
