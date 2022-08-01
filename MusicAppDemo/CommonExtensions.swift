//
//  CommonExtensions.swift
//  MusicAppDemo
//
//  Created by Марк Пушкарь on 21.07.2022.
//

import Foundation
import UIKit

extension UIView {
    func addSubviews(_ subviews: UIView...) {
        subviews.forEach { addSubview($0) }
    }
}

extension UIView {
    func toAutoLayout() {
        self.translatesAutoresizingMaskIntoConstraints = false
    }
}
