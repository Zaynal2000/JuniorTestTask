//
//  NameTextView.swift
//  JuniorTestTask
//
//  Created by Зайнал Гереев on 07.11.2023.
//

import UIKit

class NameTextView: UITextView {
    
    override init(frame: CGRect, textContainer: NSTextContainer?) {
        super .init(frame: frame, textContainer: textContainer)
        
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        text = "Введтте данные"
        textColor = .lightGray
        textAlignment = .right
        isScrollEnabled = false
        font = Resources.Font.avenirNextRegular(with: 18)
    }
    
}
