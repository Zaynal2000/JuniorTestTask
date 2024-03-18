//
//  UITableView + Extensions.swift
//  JuniorTestTask
//
//  Created by Зайнал Гереев on 29.01.2024.
//

import UIKit

extension UITableView {
    
    func register(_ type: UITableViewCell.Type) {
        let className = String(describing: type)
        register(type, forCellReuseIdentifier: className)
    }
    
    func dequeueReusableCell<T>(_ type: T.Type) -> T? {
        let className = String(describing: type)
        return dequeueReusableCell(withIdentifier:className) as? T
    }
    
}
