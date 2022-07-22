//
//  Person.swift
//  ContactList
//
//  Created by Алексей on 19.07.2022.
//

import Foundation

struct Person {
    
    let name: String
    let surname: String
    let email: String
    let phoneNumber: String
    
    var fullName: String {
        name + " " + surname
    }
    
    static func getContactInfo() -> [Person] {
        
        var persons: [Person] = []
        
        let names = DataStore.shared.names.shuffled()
        let surnames = DataStore.shared.surnames.shuffled()
        let emails = DataStore.shared.emails.shuffled()
        let phoneNumbers = DataStore.shared.phoneNumbers.shuffled()
        
        let iterationCount = min(
            names.count,
            surnames.count,
            emails.count,
            phoneNumbers.count
            )
        
        for index in 0..<iterationCount {
            let person = Person(
                name: names[index],
                surname: surnames[index],
                email: emails[index],
                phoneNumber: phoneNumbers[index]
            )
            persons.append(person)
        }
        
      return persons
    }
}



