//
//  TabBarViewController.swift
//  ContactList
//
//  Created by Алексей on 22.07.2022.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

    settingViewControllers()
    }
    
    private func settingViewControllers() {
        
        guard let firstVC = viewControllers?.first as? FirstContactsListViewController else { return }
        guard let secondVC = viewControllers?.last as? SecondContactListViewController else { return }
        
        let personsList = Person.getContactInfo()
        firstVC.personsList = personsList
        secondVC.personsList = personsList
    }
}
