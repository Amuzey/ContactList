//
//  ContactViewController.swift
//  ContactList
//
//  Created by Алексей on 19.07.2022.
//

import UIKit

class ContactViewController: UIViewController {
    
    @IBOutlet weak var phoneNumber: UILabel!
    @IBOutlet weak var emailAdress: UILabel!
    @IBOutlet weak var navigationContactInfo: UINavigationItem!
    
    var contact: Person!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationContactInfo.title = contact.fullName
        phoneNumber.text = "Phone: \(contact.phoneNumber)"
        emailAdress.text = "Email: \(contact.email)"
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
