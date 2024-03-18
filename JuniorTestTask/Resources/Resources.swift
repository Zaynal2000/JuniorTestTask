//
//  Resources.swift
//  JuniorTestTask
//
//  Created by Зайнал Гереев on 25.10.2023.
//

import UIKit

enum Resources {
    
    enum NameFields: String, CaseIterable  {
        case firstName = "Имя"
        case secondaName = "Фамилия"
        case thirdName = "Отчество"
        case birthsday = "Дата рождения"
        case gender = "Пол"
        
    }
    
    enum Gender: String, CaseIterable {
        case noSpecified = "Не указано"
        case man = "Мужской"
        case woman = "Женский"
    }
    
    enum Font {
        static func avenirNextRegular(with size: CGFloat) -> UIFont? {
            UIFont(name: "Avenir Next", size: size)
        }
    }
    
}
