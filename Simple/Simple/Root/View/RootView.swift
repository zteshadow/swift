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
                Text(item.title)
                    .tabItem {
                        item.image
                        Text(item.title)
                }
            }
        }
    }
}

struct RootView_Previews: PreviewProvider {
    static var previews: some View {
        RootView(viewModel: RootViewModel())
    }
}
