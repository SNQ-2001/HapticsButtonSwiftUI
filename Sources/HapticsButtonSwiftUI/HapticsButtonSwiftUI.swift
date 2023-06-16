// The Swift Programming Language
// https://docs.swift.org/swift-book

import SwiftUI
import Haptics

struct Button<T: View>: View {
    private let haptics: Haptics

    private let action: () -> Void
    
    private let label: () -> T
    
    init(haptics: Haptics, action: @escaping () -> Void, label: @escaping () -> T) {
        self.haptics = haptics
        self.action = action
        self.label = label
    }

    var body: some View {
        SwiftUI.Button {
            haptics.play()
            action()
        } label: {
            label()
        }
    }
}
