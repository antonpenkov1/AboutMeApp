//
//  UserViewController.swift
//  AboutMeApp
//
//  Created by Антон Пеньков on 26.11.2023.
//

import UIKit

final class WelcomeViewController: UIViewController {

    @IBOutlet var userNameLabel: UILabel!
    
    var userName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userNameLabel.text = "Welcome, \(userName ?? "User")!"
        addGradient()
    }
    
    private func addGradient() {
        let gradient = CAGradientLayer()
        gradient.colors = [
            UIColor.systemPink.withAlphaComponent(0.6).cgColor,
            UIColor.systemBlue.withAlphaComponent(0.6).cgColor
        ]
        gradient.frame = view.bounds
        view.layer.insertSublayer(gradient, at: 0)
    }
}
