//
//  Date + Extensions.swift
//  JuniorTestTask
//
//  Created by Зайнал Гереев on 30.01.2024.
//

import Foundation

extension Date {
    
    func getStringFromDate() -> String{
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd.MM.yyyy"
        let dateString = dateFormatter.string(from: self)
        return dateString
    }
}
