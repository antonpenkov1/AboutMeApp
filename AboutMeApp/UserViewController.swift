//
//  UserViewController.swift
//  AboutMeApp
//
//  Created by Антон Пеньков on 26.11.2023.
//

import UIKit

final class UserViewController: UIViewController {

    @IBOutlet var userNameLabel: UILabel!
    
    var userName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userNameLabel.text = "Welcome, \(userName ?? "User")!"
    }
    
    @IBAction func logOutButtonAction() {
//        let logInVC = LogInViewController()
//        logInVC.userNameTextField.text = ""
//        logInVC.passwordTextField.text = ""
        dismiss(animated: true)
    }
    
}
