//
//  NavigationViewController.swift
//  AboutMeApp
//
//  Created by Антон Пеньков on 01.12.2023.
//

import UIKit

class NavigationViewController: UINavigationController {
    
    var person: Person!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let infoVC = segue.destination as? InfoViewController
        infoVC?.person = person
    }

}
