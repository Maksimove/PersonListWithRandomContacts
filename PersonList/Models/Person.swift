//
//  Person.swift
//  PersonList
//
//  Created by fear on 22.05.2024.
//

struct Person {
    let name: String
    let surname: String
    
    let phone: String
    let email: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    var rows: [String] {
        [phone, email]
    }
    
    static func getPersonList() -> [Person] {
        var personList: [Person] = []
        let dataStrore = DataStore.shared
        
        let names = dataStrore.names.shuffled()
        let surnames = dataStrore.surnames.shuffled()
        let phoneNumbers = dataStrore.phoneNumbers.shuffled()
        let emails = dataStrore.emails.shuffled()
        
        let iterationCount = min(
            names.count,
            surnames.count,
            phoneNumbers.count,
            emails.count
        )
        
        for index in 0..<iterationCount {
            let person = Person(
                name: names[index],
                surname: surnames[index],
                phone: phoneNumbers[index],
                email: emails[index])
            
            personList.append(person)
        }
    
        return personList
    }
}
