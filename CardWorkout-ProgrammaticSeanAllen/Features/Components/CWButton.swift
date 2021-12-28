//
//  CWButton.swift
//  CardWorkout-ProgrammaticSeanAllen
//
//  Created by Gabriel on 26/12/21.
//

import UIKit

class CWButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configute()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(backgroundColor: UIColor, title: String ) {
        super.init(frame: .zero)
        self.backgroundColor = backgroundColor
        setTitle(title, for: .normal)
        configute()
    }
    
    func configute() {
        layer.cornerRadius = 8
        titleLabel?.font = .systemFont(ofSize: 19, weight: .bold)
        setTitleColor(.white, for: .normal)
        translatesAutoresizingMaskIntoConstraints = false
        
    }
}
