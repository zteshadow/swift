//
//  LocalizationApp.swift
//  Localization
//
//  Created by Liantao Song on 2022/1/13.
//

import SwiftUI
import Module1
import Module2

@main
struct LocalizationApp: App {
    var body: some Scene {
        WindowGroup {
            VStack {
                Module1View()
                Module2View()
                ContentView()
            }
        }
    }
}
