//
//  ContactsViewController.swift
//  ContactList
//
//  Created by Алексей on 19.07.2022.
//

import UIKit

class FirstContactsListViewController: UITableViewController {
    
    private let contactsList = Person.getContactInfo()

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        contactsList.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contact", for: indexPath)
        let contact = contactsList[indexPath.row]

        var content = cell.defaultContentConfiguration()
        content.text = contact.fullName
        cell.contentConfiguration = content
        return cell
    }


    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let contactVC = segue.destination as? ContactViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        contactVC.contact = contactsList[indexPath.row]
    }
}
