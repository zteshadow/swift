//
//  Button+Extension.swift
//  RadioGroupPicker
//
//  Created by samuelsong on 2022/3/22.
//

import SwiftUI

struct ImageButtonStyle: ButtonStyle {
    private let normal: Image
    private let selected: Image
    private var isSelected: Bool

    init(normal: Image, selected: Image, isSelected: Bool) {
        self.isSelected = isSelected
        self.normal = normal
        self.selected = selected
    }

    func makeBody(configuration: Configuration) -> some View {
        return configuration.label
            .background((isSelected ? selected : normal).isPressed(configuration))
    }
}

struct RadioPickerButton: View {
    @Environment(\.isSelected) var isSelected
    private let action: () -> Void

    init(action: @escaping () -> Void) {
        self.action = action
    }

    var body: some View {
        /// label text can't be empty, or will not display
        Button(" ", action: action)
        .buttonStyle(ImageButtonStyle(normal: Image("radio-off", bundle: .main), selected: Image("radio-selected", bundle: .main), isSelected: isSelected))
    }
}

private extension View {
    func isPressed(_ configuration: ButtonStyleConfiguration) -> some View {
        self.opacity(configuration.isPressed ? 0.75 : 1.0).scaleEffect(configuration.isPressed ? 0.95 : 1.0)
    }
}

struct Button_Extension_Previews: PreviewProvider {
    private struct ButtonTest: View {
        @State var buttonSelected = false
        var body: some View {
            RadioPickerButton() {
                buttonSelected.toggle()
            }.selected(isSelected: buttonSelected)
        }
    }
    static var previews: some View {
        ButtonTest()
    }
}
