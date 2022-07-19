//
//  Person.swift
//  ContactList
//
//  Created by Алексей on 19.07.2022.
//

import Foundation

struct Person {
    
    var name: String
    var surname: String
    var email: String
    var phoneNumber: String
    
    var fullName: String {
        name + " " + surname
    }
    
  static func getContactInfo() -> [Person] {
        [
            Person(name: "Aleksey", surname: "Ivanov", email: "idm.ru", phoneNumber: "898989"),
            Person(name: "Anastasia", surname: "Shmeleva", email: "qweqo.com", phoneNumber: "908833")
        ]
    }
}

//class dataStore {
//    var name: [String]
//    var surname: [String]
//    var email: [String]
//    var phoneNumber: [String]
//
//}
