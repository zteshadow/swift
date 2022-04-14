//
//  RootViewModel.swift
//  Simple
//
//  Created by samuelsong on 2022/4/14.
//

import SwiftUI

class RootViewModel: ObservableObject {
    @Published var tabList: [RootViewModelItem]
    var selected: TabType = .home

    init() {
        tabList = [
            .init(id: .home, title: "Home", image: Image(systemName: "house"), backgroundColor: .red),
            .init(id: .setting, title: "Setting", image: Image(systemName: "gear"), backgroundColor: .blue)
            ]
    }
}
