//
//  Habit.swift
//  cmdLife.app
//
//  Created by İlayda Taneri on 03/05/2026.
//

import Foundation
import SwiftData

@Model
class Habit: Identifiable {
    var id: UUID
    var name: String
    var completedDates: [Date]
    var createdDate: Date
    
    var streak: Int{
        var count = 0
        let calendar = Calendar.current
        var checkDate = Date()
        
        while completedDates.contains(where: {
            calendar.isDate($0, inSameDayAs: checkDate)
        }) {
            count += 1
            checkDate = calendar.date(byAdding: .day, value: -1, to: checkDate) ?? checkDate
        }
        return count
    }
    init (
        id: UUID = UUID(),
        name: String,
        completedDates: [Date] = [],
        createdDate: Date = Date()
    ) {
        self.id = id
        self.name = name
        self.completedDates = completedDates
        self.createdDate = createdDate
    }
    
    func isCompletedToday() -> Bool {
        let calendar = Calendar.current
        return completedDates.contains(where: {
            calendar.isDate($0, inSameDayAs: Date())
        })
    }
    
    func markComplete() {
        if !isCompletedToday() {
            completedDates.append(Date())
        }
    }
}
