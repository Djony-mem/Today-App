//
//  Data+Exemple.swift
//  Exemple App
//
//  Created by brubru on 13.03.2022.
//

import Foundation

extension Date {
    var dayInTimeText: String {
        let timeText = formatted(date: .omitted, time: .shortened)
        if Locale.current.calendar.isDateInToday(self) {
            let timeFormat = NSLocalizedString("Today at %@", comment: "Today at time format string")
            return String(format: timeFormat, timeText)
        } else {
            let dateText = formatted(.dateTime.month(.abbreviated).day())
            let dataAndTimeFormat = NSLocalizedString("%@ at %@", comment: "Date and time format string")
            return String(format: dataAndTimeFormat, dateText, timeText)
        }
    }
    
    var dateText: String {
        if Locale.current.calendar.isDateInToday(self) {
            return NSLocalizedString("Today", comment: "Today due date descriptions")
        } else {
            return formatted(.dateTime.month().day().weekday(.wide))
        }
    }
}
