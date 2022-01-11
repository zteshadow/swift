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
    @State private var selectedFlavorFromInline = Flavor.chocolate
    @State private var selectedFlavorFromWheel = Flavor.chocolate
    @State private var selectedFlavorFromSegment = Flavor.vanilla

    var body: some View {
        Form {
            Section(header: Text("Segment Style")) {
                Picker("", selection: $selectedFlavorFromSegment) {
                    Text("Chocolate").tag(Flavor.chocolate)
                    Text("Vanilla").tag(Flavor.vanilla)
                    Text("Strawberry").tag(Flavor.strawberry)
                }.pickerStyle(.segmented)
                Text("Selected flavor: \(selectedFlavorFromSegment.rawValue)")
            }
            Section(header: Text("Inline Style")) {
                Picker("", selection: $selectedFlavorFromInline) {
                    Text("Chocolate").tag(Flavor.chocolate)
                    Text("Vanilla").tag(Flavor.vanilla)
                    Text("Strawberry").tag(Flavor.strawberry)
                }.pickerStyle(.inline)
            }
            Section(header: Text("Wheel Style")) {
                Picker("", selection: $selectedFlavorFromWheel) {
                    Text("Chocolate").tag(Flavor.chocolate)
                    Text("Vanilla").tag(Flavor.vanilla)
                    Text("Strawberry").tag(Flavor.strawberry)
                }.pickerStyle(.wheel).frame(maxHeight: 80)
            }
            Section(header: Text("Menu Style")) {
                Picker("", selection: $selectedFlavorFromMenu) {
                    Text("Chocolate").tag(Flavor.chocolate)
                    Text("Vanilla").tag(Flavor.vanilla)
                    Text("Strawberry").tag(Flavor.strawberry)
                }.pickerStyle(.menu)
                Text("Selected flavor: \(selectedFlavorFromMenu.rawValue)")
            }
        }
    }
}

struct CurrentPicker_Previews: PreviewProvider {
    static var previews: some View {
        CurrentPicker()
    }
}
