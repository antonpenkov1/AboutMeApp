//
//  ViewController.swift
//  AboutMeApp
//
//  Created by Антон Пеньков on 26.11.2023.
//

import UIKit

final class LoginViewController: UIViewController {

    // MARK: - IB Outlets and Properties
    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    private let user = User.getUserInfo()

    // MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        userNameTextField.text = user.userName
        passwordTextField.text = user.password
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarVC = segue.destination as? TabBarViewController else { return }
        tabBarVC.userName = user.userName
        tabBarVC.person = user.person
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        guard userNameTextField.text == user.userName, 
                passwordTextField.text == user.password else {
            showAlert(
                withTitle: "Invalid login or password",
                andMessage: "Please, enter correct login and password") {
                    self.passwordTextField.text = ""
                }
            return false
        }
        return true
    }
    
    // MARK: - IB Actions
    @IBAction func forgotRegisterData(_ sender: UIButton) {
        sender.tag == 0 
            ? showAlert(withTitle: "Oops!", andMessage: "Your name is \(user.userName) 😉")
            : showAlert(withTitle: "Oops!", andMessage: "Your password is \(user.password) 😉")
        
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTextField.text = ""
        passwordTextField.text = ""
    }
    
    // MARK: - Private Methods
    private func showAlert(
        withTitle title: String,
        andMessage message: String,
        completion: (() -> Void)? = nil
    ) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            completion?()
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    
}

