//
//  CurrentPicker.swift
//  RadioGroupPicker
//
//  Created by samuelsong on 2022/1/9.
//

import SwiftUI

enum Flavor: String, CaseIterable, Identifiable {
    case chocolate
    case vanilla
    case strawberry

    var id: String { self.rawValue }
}

struct CurrentPicker: View {
    @State private var selectedFlavorFromMenu = Flavor.chocolate
    @State private var selectedFlavorFromSegment = Flavor.vanilla

    var body: some View {
        Form {
            Section(header: Text("Menu Style")) {
                Picker("Flavor", selection: $selectedFlavorFromMenu) {
                    Text("Chocolate").tag(Flavor.chocolate)
                    Text("Vanilla").tag(Flavor.vanilla)
                    Text("Strawberry").tag(Flavor.strawberry)
                }.pickerStyle(.menu)
                Text("Selected flavor: \(selectedFlavorFromMenu.rawValue)")
            }
            Section(header: Text("Segment Style")) {
                Picker("Flavor", selection: $selectedFlavorFromSegment) {
                    Text("Chocolate").tag(Flavor.chocolate)
                    Text("Vanilla").tag(Flavor.vanilla)
                    Text("Strawberry").tag(Flavor.strawberry)
                }.pickerStyle(.segmented)
                Text("Selected flavor: \(selectedFlavorFromSegment.rawValue)")
            }
        }
    }
}

struct CurrentPicker_Previews: PreviewProvider {
    static var previews: some View {
        CurrentPicker()
    }
}
