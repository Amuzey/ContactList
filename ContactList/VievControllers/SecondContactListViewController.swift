//
//  SecondContactListViewController.swift
//  ContactList
//
//  Created by Алексей on 19.07.2022.
//

import UIKit

class SecondContactListViewController: UITableViewController {
    
    var personsList: [Person]!
    
    
    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        personsList.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "phone", for: indexPath)
        let contact = personsList[indexPath.section]
        var content = cell.defaultContentConfiguration()
        
        if indexPath.row == 0 {
            content.text = contact.phoneNumber
            content.image = UIImage(systemName: "phone")
        } else if indexPath.row == 1 {
            content.text = contact.email
            content.image = UIImage(systemName: "tray")
        }
        
        cell.contentConfiguration = content
        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let contact = personsList[section]
        return contact.fullName
    }
}
