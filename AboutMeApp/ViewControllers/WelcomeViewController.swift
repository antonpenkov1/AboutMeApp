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
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userNameLabel.text = "Welcome, \(userName ?? "User")!"
        view.addGradient()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let infoVC = segue.destination as? InfoViewController
        infoVC?.person = person
    }
    
}

extension UIView {
    
    func addGradient() {
        let gradient = CAGradientLayer()
        gradient.colors = [
            UIColor.systemPink.withAlphaComponent(0.6).cgColor,
            UIColor.systemBlue.withAlphaComponent(0.6).cgColor
        ]
        gradient.frame = bounds
        layer.insertSublayer(gradient, at: 0)
    }
    
}
