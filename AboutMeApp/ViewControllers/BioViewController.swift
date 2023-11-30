//
//  BioViewController.swift
//  AboutMeApp
//
//  Created by Антон Пеньков on 30.11.2023.
//

import UIKit

final class BioViewController: UIViewController {

    @IBOutlet var bioLabel: UILabel!
    
    var bio: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addGradient()
        bioLabel.text = bio
    }

}
