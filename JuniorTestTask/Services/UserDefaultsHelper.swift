//
//  UserDefaultsHelper.swift
//  JuniorTestTask
//
//  Created by Зайнал Гереев on 23.11.2023.
//

import UIKit

final class UserDefaultsHelper {
    
    private static let defaults = UserDefaults.standard
    private static let userSessionKey = "userKey"
    
    static func getUserDictionary() -> [String : String] {
        defaults.value(forKey: userSessionKey) as? [String : String] ?? [:]
    }
    
    static func saveUserValue(_ key: String, _ value: String) {
        var userDictionary = getUserDictionary()
        userDictionary[key] = value
        defaults.set(userDictionary, forKey: userSessionKey)
    }
    
    static func getUserModel() -> UserModel {
        var userModel = UserModel()
        
        let userDictionary = getUserDictionary()
        userModel.firstName = userDictionary[Resources.NameFields.firstName.rawValue] ?? ""
        userModel.secondName = userDictionary[Resources.NameFields.secondaName.rawValue] ?? ""
        userModel.thirdName = userDictionary[Resources.NameFields.thirdName.rawValue] ?? ""
        userModel.birthsday = userDictionary[Resources.NameFields.birthsday.rawValue] ?? ""
        userModel.gender = userDictionary[Resources.NameFields.gender.rawValue] ?? ""
        
        return userModel
    }
    
    static func getUserValue(_ key: String) -> String { //выдает значение по ключу
        
        let userDictionary = getUserDictionary()
        let stringValue = userDictionary[key] ?? ""
        
        return stringValue
    }
    
    static func saveUserImage(image: UIImage) {
        guard let data = image.jpegData(compressionQuality: 0.5) else { return } //ухудшили качество, а вообще очень плохо сохранять картинки в UserDefaults
        defaults.set(data, forKey: "userPhoto")
    }
    
    static func loadUserImage() -> UIImage {
        guard let data = defaults.data(forKey: "userPhoto"),
        let image = UIImage(data: data) else { return UIImage()
        }
        return image
    }
}
