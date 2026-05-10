//
//  JournalEntry.swift
//  cmdLife.app
//
//  Created by İlayda Taneri on 10/05/2026.
//

import Foundation
import SwiftData

@Model
class JournalEntry {
    var id: UUID
    var encryptedContent: Data
    var date: Date
    var createdDate: Date
    
    init (
        id: UUID = UUID(),
        encryptedContent: Data,
        date:  Date = Date()
    ) {
        self.id = id
        self.encryptedContent = encryptedContent
        self.date = date
        self.createdDate = Date()
    }
}

