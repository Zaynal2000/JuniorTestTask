//
//  String + Extensions.swift
//  JuniorTestTask
//
//  Created by Зайнал Гереев on 30.01.2024.
//

import Foundation

extension String {
    
    func gatDateFromString() -> Date{
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd.MM.yyyy"
        let date = dateFormatter.date(from: self) ?? Date()
        return date
    }
    
}
