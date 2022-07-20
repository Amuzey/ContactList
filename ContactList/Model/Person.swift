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
        let dataStore = DataStore()
        var personList: [Person] = []
        
        for count in 0...9 {
            
            personList.append(
                Person(
                    name: dataStore.name.remove(at: Int.random(in: 0...9 - count)),
                    surname: dataStore.surname.remove(at: Int.random(in: 0...9 - count)),
                    email: dataStore.email.remove(at: Int.random(in: 0...9 - count)),
                    phoneNumber: dataStore.phoneNumber.remove(at: Int.random(in: 0...9 - count))
                )
            )
        }
        return personList
    }
}





class DataStore {
    
    var name = [
        "Oliver",
        "Jack",
        "Harry",
        "Jacob",
        "Charley",
        "Thomas",
        "George",
        "Oscar",
        "Anderson",
        "Arhold"
    ]
    var surname = [
        "Williams",
        "Peters",
        "Gibson",
        "Martin",
        "Jordan",
        "Jackson",
        "Grant",
        "Davis",
        "Collins",
        "Bradley"
    ]
    var email = [
        "8l0g@yandex.ru",
        "1zx8@yandex.ru",
        "weqwex@mail.ru",
        "34ed@gmail.com",
        "pexacl@mail.ru",
        "7eo1@gmail.com",
        "1wee@gmail.com",
        "ieut@gmail.com",
        "3t@outlook.com",
        "4o2g@yandex.ru"
        
    ]
    var phoneNumber = [
        "+7(343)891-3949",
        "+7(343)832-4811",
        "+7(343)393-7048",
        "+7(343)595-3930",
        "+7(343)211-2508",
        "+7(343)409-2201",
        "+7(343)943-0828",
        "+7(343)238-1789",
        "+7(343)003-5110",
        "+7(343)198-3990"
    ]
}

