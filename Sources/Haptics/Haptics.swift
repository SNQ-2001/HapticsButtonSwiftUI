//
//  Haptics.swift
//  
//
//  Created by 宮本大新 on 2023/06/16.
//

import class UIKit.UIImpactFeedbackGenerator
import class UIKit.UINotificationFeedbackGenerator
import class UIKit.UISelectionFeedbackGenerator

@available(*, deprecated, message: "Use `Haptics.impact(***).play()`")
public func playImpactHaptic(_ style: UIImpactFeedbackGenerator.FeedbackStyle) {
    let generator = UIImpactFeedbackGenerator(style: style)
    generator.impactOccurred()
}

@available(*, deprecated, message: "Use `Haptics.notification(***).play()`")
public func playNotificationHaptic(_ type: UINotificationFeedbackGenerator.FeedbackType) {
    let generator = UINotificationFeedbackGenerator()
    generator.notificationOccurred(type)
}

@available(*, deprecated, message: "Use `Haptics.selection.paly()`")
public func playSelectionHaptic() {
    let generator = UISelectionFeedbackGenerator()
    generator.selectionChanged()
}

public enum Haptics {
    case impact(_ style: UIImpactFeedbackGenerator.FeedbackStyle)
    case notification(_ type: UINotificationFeedbackGenerator.FeedbackType)
    case selection
    
    public func play() {
        switch self {
        case let .impact(style):
            playImpactHaptic(style)
        case let .notification(type):
            playNotificationHaptic(type)
        case .selection:
            playSelectionHaptic()
        }
    }
}

func sas() {
    Haptics.impact(style).play()
}
