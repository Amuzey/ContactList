//
//  SecondContactListViewController.swift
//  ContactList
//
//  Created by Алексей on 19.07.2022.
//

import UIKit

class SecondContactListViewController: UITableViewController {
    
    private let contactsList = Person.getContactInfo()

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        contactsList.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      2
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "secondContact", for: indexPath)
        let contact = contactsList[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        content.text = contact.phoneNumber
        cell.contentConfiguration = content
        return cell
    }
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let indexPath = tableView.indexPathForSelectedRow
        let contact = contactsList[indexPath?.row ?? 1]
        return contact.fullName
    }
}
