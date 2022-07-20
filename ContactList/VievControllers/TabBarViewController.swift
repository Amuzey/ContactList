//
//  TabBarViewController.swift
//  ContactList
//
//  Created by Алексей on 19.07.2022.
//

import UIKit

class TabBarViewController: UITabBarController {
    
   private let contactsList = Person.getContactInfo()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

   
    // MARK: - Navigation

     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         if let firstVC = segue.destination as? FirstContactsListViewController {
             firstVC.contactsList = contactsList
             print(1)
         } else if let secondVC = segue.destination as? SecondContactListViewController {
             secondVC.contactsList = contactsList
             print(2)
         }
     }
}
