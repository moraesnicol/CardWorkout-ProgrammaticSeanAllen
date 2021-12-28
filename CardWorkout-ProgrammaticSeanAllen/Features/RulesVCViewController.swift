//
//  RulesVCViewController.swift
//  CardWorkout-ProgrammaticSeanAllen
//
//  Created by Gabriel on 26/12/21.
//

import UIKit

class RulesVC: UIViewController {
    
    let titleLabel     = UILabel()
    let rulesLabel     = UILabel()
    let exerciseLabel  = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        configureTitleLabel()
        configureRulesLabel()
        configureExerciseLabel()
        
    }
    
    func configureTitleLabel() {
        view.addSubview(titleLabel)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.text = "Rules"
        titleLabel.font = .systemFont(ofSize: 40, weight: .bold)
        titleLabel.textAlignment = .center
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 60),
            titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            titleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            
        ])
    }
    
    func configureRulesLabel() {
        view.addSubview(rulesLabel)
       rulesLabel.translatesAutoresizingMaskIntoConstraints = false
       rulesLabel.text = StringsConstants.rulesDescription.localized
       rulesLabel.font = .systemFont(ofSize: 19, weight: .semibold)
       rulesLabel.textAlignment = .center
       rulesLabel.lineBreakMode = .byWordWrapping
       rulesLabel.numberOfLines = 0
        
        NSLayoutConstraint.activate([
            rulesLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 25),
            rulesLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            rulesLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            
        ])
    }
    
    func configureExerciseLabel() {
        view.addSubview(exerciseLabel)
      exerciseLabel.translatesAutoresizingMaskIntoConstraints = false
      exerciseLabel.text = StringsConstants.exerciseDescription.localized
      exerciseLabel.font = .systemFont(ofSize: 19, weight: .semibold)
      exerciseLabel.numberOfLines = 0
        
        NSLayoutConstraint.activate([
            exerciseLabel.topAnchor.constraint(equalTo: rulesLabel.bottomAnchor, constant: 60),
            exerciseLabel.widthAnchor.constraint(equalToConstant: 200),
            exerciseLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
    
}
