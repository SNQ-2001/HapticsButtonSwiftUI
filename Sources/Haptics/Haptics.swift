//
//  Haptics.swift
//  
//
//  Created by 宮本大新 on 2023/06/16.
//

import class UIKit.UIImpactFeedbackGenerator
import class UIKit.UINotificationFeedbackGenerator
import class UIKit.UISelectionFeedbackGenerator

public func playFeedbackHaptic(_ style: UIImpactFeedbackGenerator.FeedbackStyle) {
    let generator = UIImpactFeedbackGenerator(style: style)
    generator.impactOccurred()
}

public func playNotificationHaptic(_ type: UINotificationFeedbackGenerator.FeedbackType) {
    let generator = UINotificationFeedbackGenerator()
    generator.notificationOccurred(type)
}

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
            playFeedbackHaptic(style)
        case let .notification(type):
            playNotificationHaptic(type)
        case .selection:
            playSelectionHaptic()
        }
    }
}
