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
    var contact: Person!

    override func viewDidLoad() {
        super.viewDidLoad()

        phoneNumber.text = contact.phoneNumber
        emailAdress.text = contact.email
        // Do any additional setup after loading the view.
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
