//
//  ContactViewController.swift
//  ContactList
//
//  Created by Алексей on 19.07.2022.
//

import UIKit

class ContactViewController: UIViewController {
    
    @IBOutlet weak var phoneNumberLabel: UILabel!
    @IBOutlet weak var emailAdressLabel: UILabel!
    
    var contact: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = contact.fullName
        phoneNumberLabel.text = "Phone: \(contact.phoneNumber)"
        emailAdressLabel.text = "Email: \(contact.email)"
    }
}
