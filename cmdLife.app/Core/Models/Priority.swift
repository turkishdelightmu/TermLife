//
//  ColorExtensions.swift
//  cmdLife.app
//
//  Created by İlayda Taneri on 17/04/2026.
//

import SwiftUI

enum Priority: String, Codable, CaseIterable {
    case high
    case medium
    case low

    // MARK: - Label
    var label: String {
        switch self {
        case .high:   return "HIGH"
        case .medium: return "MED"
        case .low:    return "LOW"
        }
    }

    // MARK: - Color
    var color: Color {
        switch self {
        case .high:   return Color(hex: "#EF4444")
        case .medium: return Color(hex: "#FFB000")
        case .low:    return Color(hex: "#00F2FF")
        }
    }
}
