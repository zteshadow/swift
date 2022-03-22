//
//  View+Extension.swift
//  RadioGroupPicker
//
//  Created by samuelsong on 2022/3/17.
//

import SwiftUI

extension View {
    func radioTag<SelectionValue: Hashable>(_ tag: SelectionValue) -> RadioGroupItem<SelectionValue> {
        return RadioGroupItem(content: AnyView(self), tag: tag)
    }
}

