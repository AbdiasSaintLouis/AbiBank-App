//
//  OnboardingViewController.swift
//  AbiBank
//
//  Created by Abdias Saint-Louis on 21/01/22.
//

import UIKit

class OnboardingViewController: UIViewController {

    let stackView = UIStackView()
    let imageView = UIImageView()
    let label = UILabel()

override func viewDidLoad() {
    super.viewDidLoad()
    style()
    layout()
    
  }
}

extension OnboardingViewController {
    func style() {
    stackView.translatesAutoresizingMaskIntoConstraints = false
    stackView.axis = .vertical
    stackView.spacing = 5
        
    // Image
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(named: "AbiBank Fast Money")
        
    
    // Label
//    label.translatesAutoresizingMaskIntoConstraints = false
//    label.text = "Welcome"
//    label.font = UIFont.preferredFont(forTextStyle: .title1)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.font = UIFont.preferredFont(forTextStyle: .title3)
        label.adjustsFontForContentSizeCategory = true
        label.numberOfLines = 0
        label.text = "AbiBank é mais rápido, fácil de usar e tem um visual totalmente novo para ajudar você a gerenciar seu dinheiro com segurança e acompanhar seus gastos para melhorar suas finanças."
    
}

func layout() {
    stackView.addArrangedSubview(imageView)
    stackView.addArrangedSubview(label)
    
    view.addSubview(stackView)
    
    NSLayoutConstraint.activate([
        stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
        stackView.leadingAnchor.constraint(greaterThanOrEqualToSystemSpacingAfter: view.leadingAnchor, multiplier: 1),
        view.trailingAnchor.constraint(equalToSystemSpacingAfter: stackView.trailingAnchor, multiplier: 1)
    
    ])
  }
}
