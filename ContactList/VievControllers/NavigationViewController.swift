//
//  NavigationViewController.swift
//  ContactList
//
//  Created by Алексей on 19.07.2022.
//

import UIKit

class NavigationController: UINavigationController {
    
  private let contactsList = Person.getContactInfo()
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarVC = segue.destination as? UITabBarController else { return }
        print("таб бар обнаружен")
        guard let viewControllers = tabBarVC.viewControllers else { return }
    print("массив контроллеров обнаружен")
        viewControllers.forEach { viewController in
            if let firstVC = viewController as? FirstContactsListViewController {
                
                print("данные в первый контроллер переданы")
                firstVC.contactsList = contactsList
            } else if let secondVC = viewController as? SecondContactListViewController {
                print("данные во второй контроллер переданы")

                secondVC.contactsList = contactsList
            }
        }
    }
}
