//
//  TabBarViewController.swift
//  AboutMeApp
//
//  Created by Антон Пеньков on 30.11.2023.
//

import UIKit

class TabBarViewController: UITabBarController {

    var userName: String!
    var person: Person!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let welcomeVC = segue.destination as? WelcomeViewController
        welcomeVC?.userName = userName
        welcomeVC?.person = person
        
        let navigationVC = segue.destination as? NavigationViewController
        navigationVC?.person = person
    }

}
