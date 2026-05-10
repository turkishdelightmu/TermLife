//
//  Task.swift
//  cmdLife.app
//
//  Created by İlayda Taneri on 03/05/2026.
//

import Foundation
import SwiftData

@Model
class Task: Identifiable {
    var id: UUID
    var title: String
    var completed: Bool
    var priority: Priority
    var dueDate: Date?
    var createdDate: Date
    
    init(
        id: UUID = UUID(),
        title: String,
        completed: Bool = false,
        priority: Priority = .medium,
        dueDate: Date? = nil,
        createdDate: Date = Date()
    ) {
        self.id = id
        self.title = title
        self.completed = completed
        self.priority = priority
        self.dueDate = dueDate
        self.createdDate = createdDate
    }
}
