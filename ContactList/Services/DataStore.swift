//
//  DataStore.swift
//  ContactList
//
//  Created by Алексей on 22.07.2022.
//

import Foundation


class DataStore {
    
    static let shared = DataStore()
    
    var names = [
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
    var surnames = [
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
    var emails = [
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
    var phoneNumbers = [
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
    
    private init() {}
}
