//
//  TerminalUtils.swift
//  cmdLife.app
//
//  Created by İlayda Taneri on 17/04/2026.
//

import Foundation

// MARK: - TerminalUtils
// Shared utility functions used across all cmdLife features.
// No UI code here — pure logic only.

enum TerminalUtils {

    // MARK: - ASCII Progress Bar
    // Generates a progress bar like [#####-----] 50%
    // filled: how many steps are complete
    // total: total number of steps
    // width: how many characters wide the bar is (default 10)
    static func progressBar(filled: Int, total: Int, width: Int = 10) -> String {
        guard total > 0 else { return "[----------] 0%" }

        let progress = Double(filled) / Double(total)
        let filledCount = min(Int(progress * Double(width)), width)
        let emptyCount = width - filledCount
        let percentage = Int(progress * 100)

        let bar = String(repeating: "#", count: filledCount)
            + String(repeating: "-", count: emptyCount)

        return "[\(bar)] \(percentage)%"
    }

    // MARK: - Timestamp
    // Returns current time as a terminal-style string e.g. 14:35
    static func timestamp() -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "HH:mm"
        return formatter.string(from: Date())
    }

    // MARK: - Date Label
    // Returns today's date as a terminal-style string e.g. 2026-04-17
    static func dateLabel() -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd"
        return formatter.string(from: Date())
    }

    // MARK: - Separator Line
    // Returns a full-width separator for terminal output
    static func separator(width: Int = 30) -> String {
        return String(repeating: "-", count: width)
    }
}
