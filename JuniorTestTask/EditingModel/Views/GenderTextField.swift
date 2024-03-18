//
//  GenderTextField.swift
//  JuniorTestTask
//
//  Created by Зайнал Гереев on 17.11.2023.
//

import UIKit

class GenderTextField: UITextField {
    
    override init(frame: CGRect) {
        super .init(frame: frame)
        
        configa()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configa() {
        textAlignment = .right
        tintColor = .clear
        font = Resources.Font.avenirNextRegular(with: 18)
        let font = Resources.Font.avenirNextRegular(with: 18)
        attributedPlaceholder = NSAttributedString(string: "Введите данные", attributes: [.foregroundColor : UIColor.lightGray, .font: font as Any])
    }
    
    override func gestureRecognizerShouldBegin(_ gestureRecognizer: UIGestureRecognizer) -> Bool {
        !isFirstResponder
    }
}
