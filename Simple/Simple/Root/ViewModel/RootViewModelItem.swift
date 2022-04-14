//
//  RootViewModelItem.swift
//  Simple
//
//  Created by samuelsong on 2022/4/14.
//

import SwiftUI

enum TabType: Int, Hashable {
    case home, setting
}

struct RootViewModelItem: Identifiable {
    var id: TabType
    var title: LocalizedStringKey
    var image: Image
    var backgroundColor: Color
}
