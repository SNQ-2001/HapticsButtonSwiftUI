// The Swift Programming Language
// https://docs.swift.org/swift-book


import SwiftUI
import Haptics

public struct Button<T: View>: View {
    private let role: ButtonRole?

    private let haptics: Haptics

    private let action: () -> Void
    
    private let label: () -> T
    
    public init(role: ButtonRole? = nil, haptics: Haptics, action: @escaping () -> Void, label: @escaping () -> T) {
        self.role = role
        self.haptics = haptics
        self.action = action
        self.label = label
    }

    public var body: some View {
        SwiftUI.Button(role: role) {
            haptics.play()
            action()
        } label: {
            label()
        }
    }
}
