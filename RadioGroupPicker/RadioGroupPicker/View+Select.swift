//
//  View+Select.swift
//  RadioGroupPicker
//
//  Created by samuelsong on 2022/3/22.
//

import SwiftUI

private struct IsSelectedKey: EnvironmentKey {
    static let defaultValue = false
}

public extension EnvironmentValues {
    var isSelected: Bool {
        get { self[IsSelectedKey.self] }
        set { self[IsSelectedKey.self] = newValue }
    }
}

public extension View {
    func selected(isSelected: Bool) -> some View {
        return self.environment(\.isSelected, isSelected)
    }
}
