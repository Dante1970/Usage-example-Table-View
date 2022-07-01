//
//  PersonDetailViewController.swift
//  PersonsList
//
//  Created by Сергей Белоусов on 29.06.2022.
//

import UIKit

class PersonDetailViewController: UIViewController {
    
    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    var phoneText: String = ""
    var emailText: String = ""
    var fullName: String = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = fullName
        phoneLabel.text = phoneText
        emailLabel.text = emailText
    }

}
