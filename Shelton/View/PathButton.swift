//
//  PathButton.swift
//  Shelton
//
//  Created by Александр Иванов on 11.10.2021.
//

import UIKit

class PathButton: UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    init(title: String) {
        super.init(frame: .zero)
        layer.cornerRadius = 8
        layer.masksToBounds = true
        setTitle(title, for: .normal)
        backgroundColor = .blue
        isEnabled = true
        translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            widthAnchor.constraint(equalToConstant: 100),
            heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
