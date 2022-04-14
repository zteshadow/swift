//
//  RootView.swift
//  Simple
//
//  Created by samuelsong on 2022/4/14.
//

import SwiftUI

struct RootView: View {
    @ObservedObject var viewModel: RootViewModel

    var body: some View {
        TabView(selection: $viewModel.selected) {
            ForEach (viewModel.tabList) { item in
                tabView(item)
                    .tabItem {
                        item.image
                        Text(item.title)
                }
            }
        }
    }

    func tabView(_ item: RootViewModelItem) -> some View {
        NavigationView {
            ZStack {
                item.backgroundColor
                Text(item.title)
            }.navigationTitle(item.title)
        }
    }
}

struct RootView_Previews: PreviewProvider {
    static var previews: some View {
        RootView(viewModel: RootViewModel())
    }
}
