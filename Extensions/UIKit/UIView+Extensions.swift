//
//  UIView+Extensions.swift
//  JuniorTestTask
//
//  Created by Зайнал Гереев on 26.10.2023.
//

import UIKit

extension UIView {
    
    func addView(_ view: UIView) {
        self.addSubview(view)
        view.translatesAutoresizingMaskIntoConstraints = false
    }
}
