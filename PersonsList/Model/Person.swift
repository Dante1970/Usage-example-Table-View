//
//  Person.swift
//  PersonsList
//
//  Created by Сергей Белоусов on 29.06.2022.
//

struct Person {
    let name: String
    let surname: String
    let phone: String
    let email: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
}

extension Person {
    static func getPerson() -> [Person] {
        var persons: [Person] = []
        let data = DataManager()
        
        for i in 0..<data.names.count {
            persons.append(Person(name: data.names[i], surname: data.surnames[i], phone: data.phones[i], email: data.emails[i]))
        }
        
        return persons
    }
}
