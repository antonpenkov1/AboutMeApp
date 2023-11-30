//
//  InfoViewController.swift
//  AboutMeApp
//
//  Created by Антон Пеньков on 30.11.2023.
//

import UIKit

final class InfoViewController: UIViewController {
    
    // MARK: - IB Outlets and Properties
    @IBOutlet var firstNameLabel: UILabel!
    @IBOutlet var lastNameLabel: UILabel!
    @IBOutlet var ageLabel: UILabel!
    @IBOutlet var cityLabel: UILabel!
    @IBOutlet var photoImageView: UIImageView!
    
    var person: Person!
    
    // MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addGradient()
        
        photoImageView.layer.cornerRadius = 50
        
        firstNameLabel.text = person.firstName
        lastNameLabel.text = person.lastName
        ageLabel.text = person.age
        cityLabel.text = person.city
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let bioVC = segue.destination as? BioViewController
        bioVC?.bio = person.bio
    }

}
