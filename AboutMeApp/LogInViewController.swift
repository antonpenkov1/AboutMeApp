//
//  ViewController.swift
//  AboutMeApp
//
//  Created by Антон Пеньков on 26.11.2023.
//

import UIKit

final class LogInViewController: UIViewController {

    // MARK: - IB Outlets and Properties
    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    private let userName = "1"
    private let password = "1"

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let userVC = segue.destination as? UserViewController
        userVC?.userName = userNameTextField.text
    }
    
    // MARK: - IB Actions
    @IBAction func logInButtonAction() {
        guard userNameTextField.text == userName && passwordTextField.text == password else {
            showAlert(
                withTitle: "Invalid login or password",
                andMessage: "Please, enter correct login and password"
            )
            return
        }
    }
    
    @IBAction func remindName() {
        showAlert(withTitle: "Oops!", andMessage: "Your name is \(userName) 😉")
    }
    
    @IBAction func remindPassword() {
        showAlert(withTitle: "Oops!", andMessage: "Your password is \(password) 😉")
    }
    
    // MARK: - Private Methods
    private func showAlert(withTitle title: String, andMessage message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            self.passwordTextField.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

