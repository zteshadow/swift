//
//  SimpleApp.swift
//  Simple
//
//  Created by samuelsong on 2022/4/14.
//

import SwiftUI

@main
struct SimpleApp: App {

    @UIApplicationDelegateAdaptor var appDelegate: AppDelegate

    var body: some Scene {
        WindowGroup {
            appDelegate.createRootView()
        }
    }
}

class AppDelegate: NSObject, UIApplicationDelegate {
    private let rootViewModel: RootViewModel

    override init() {
        rootViewModel = RootViewModel()
    }

    func createRootView() -> some View {
        return RootView(viewModel: rootViewModel)
    }
}
