//
//  Extensions.swift
//  MillionGame
//
//  Created by Igor Polousov on 09.03.2022.
//

import UIKit


extension UIButton {
    func applyDesign() {
        self.layer.borderColor = UIColor.lightGray.cgColor
        self.layer.borderWidth = 1.5
        self.layer.cornerRadius = 5
        self.titleLabel?.font = UIFont(name: "Chalkduster", size: 17)
    }
}

extension UILabel {
    func applyDesign() {
        self.layer.borderColor = UIColor.lightGray.cgColor
        self.layer.borderWidth = 1.5
        self.layer.cornerRadius = 5
    }
}
