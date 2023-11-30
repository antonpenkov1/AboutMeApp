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
    
    private let person = User.getUserInfo().person
    
    // MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addGradient()
        firstNameLabel.text = person.firstName
        lastNameLabel.text = person.lastName
        ageLabel.text = person.age
        cityLabel.text = person.city
        photoImageView.layer.cornerRadius = 50
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let bioVC = segue.destination as? BioViewController
        bioVC?.bio = person.bio
    }

}
