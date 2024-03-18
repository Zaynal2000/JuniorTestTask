//
//  DatePickerTableViewCell.swift
//  JuniorTestTask
//
//  Created by Зайнал Гереев on 15.11.2023.
//

import UIKit

final class DatePickerTableViewCell: UITableViewCell {
    
    static var idDatePickerCell = "idDatePickerCell"
    
    private let nameLabel = UILabel()
    
    private let dataPicker: UIDatePicker = {
        let datePicker = UIDatePicker()
        datePicker.datePickerMode = .date
        datePicker.maximumDate = Date()
        datePicker.subviews[0].subviews[0].subviews[0].alpha = 0
        return datePicker
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setupViews()
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func setupViews() {
        selectionStyle = .none
        
        nameLabel.font = Resources.Font.avenirNextRegular(with: 18)
        addView(nameLabel)
        contentView.addView(dataPicker)
        
    }
    
    public func configure(name: String, date: Date) {
        nameLabel.text = name
        dataPicker.date = date
    }
    
    public func getCellValue() -> String {
        if dataPicker.date.getStringFromDate() == Date().getStringFromDate() {
            return ""
        } else {
            return dataPicker.date.getStringFromDate()
        }
    }
    
}

//MARK: - set Constraints

extension DatePickerTableViewCell {
    
    private func setConstraints() {
        NSLayoutConstraint.activate([
            nameLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
            nameLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            nameLabel.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.35),
            
            dataPicker.centerYAnchor.constraint(equalTo: centerYAnchor),
            dataPicker.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -5)

        ])
    }
    
}
