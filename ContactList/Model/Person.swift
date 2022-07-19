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
        name + surname
    }
}

//class dataStore {
//    var name: [String]
//    var surname: [String]
//    var email: [String]
//    var phoneNumber: [String]
//
//}
