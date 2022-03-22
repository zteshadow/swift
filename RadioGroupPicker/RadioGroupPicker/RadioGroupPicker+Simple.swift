//
//  RadioGroupPicker+Simple.swift
//  RadioGroupPicker
//
//  Created by samuelsong on 2022/3/17.
//

import SwiftUI

struct RadioGroupItem<SelectionValue> where SelectionValue: Hashable {
    var content: AnyView
    var tag: SelectionValue
}

struct RadioGroupPickerSimple<SelectionValue>: View where SelectionValue: Hashable {
    private let title: Text
    private let list: [RadioGroupItem<SelectionValue>]
    @Binding var selection: SelectionValue

    init<S>(_ title: S, selection: Binding<SelectionValue>, builder: () ->[RadioGroupItem<SelectionValue>]) where S: StringProtocol {
        self.title = Text(title)
        list = builder()
        self._selection = selection
    }

    init(_ title: LocalizedStringKey, selection: Binding<SelectionValue>, builder: () -> [RadioGroupItem<SelectionValue>]) {
        self.title = Text(title)
        list = builder()
        self._selection = selection
    }

    var body: some View {
        VStack(alignment: .leading) {
            title.padding()
            List {
                ForEach(list, id: \.tag) { item in
                    itemView(item).onTapGesture {
                        self.selection = item.tag
                    }
                }
            }
        }
    }

    private func itemView(_ item: RadioGroupItem<SelectionValue>) -> some View {
        HStack {
            RadioPickerButton() {
                self.selection = item.tag
            }
            .selected(isSelected: self.selection == item.tag)
            .padding()
            item.content
            Spacer() /// expand touch area
        }.contentShape(Rectangle())
    }
}

#if DEBUG

struct SimpleTest: View {
    @State private var selected: Flavor = .vanilla {
        didSet {
            print("\(selected)")
        }
    }

    var body: some View {
        RadioGroupPickerSimple("RadioGroupTitle", selection: $selected) {
            [
                Text("Chocolate").radioTag(Flavor.chocolate),
                Text("Vanilla").radioTag(Flavor.vanilla),
                Text("Strawberry").radioTag(Flavor.strawberry)
            ]
        }
    }
}

struct RadioGroupPicker_Simple_Previews: PreviewProvider {
    static var previews: some View {
        SimpleTest()
    }
}

#endif
