//
//  SecondContactListViewController.swift
//  ContactList
//
//  Created by Алексей on 19.07.2022.
//

import UIKit

class SecondContactListViewController: UITableViewController {
    
    private let contactsList = Person.getContactInfo()


    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        contactsList.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      2
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let number = tableView.dequeueReusableCell(withIdentifier: "secondContact", for: indexPath)
        let email = tableView.dequeueReusableCell(withIdentifier: "secondContact", for: indexPath)
        let contact = contactsList[indexPath.row]
        var contentNumber = number.defaultContentConfiguration()
        var contentEmail = email.defaultContentConfiguration()
        
        contentNumber.text = contact.phoneNumber
        contentEmail.text = contact.email
        
        number.contentConfiguration = contentNumber
        email.contentConfiguration = contentEmail
        return email
    }
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let indexPath = tableView.indexPathForSelectedRow
        let contact = contactsList[indexPath?.row ?? 1]
        return contact.fullName
    }
}
