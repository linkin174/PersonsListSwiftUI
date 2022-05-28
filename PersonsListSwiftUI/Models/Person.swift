//
//  Person.swift
//  PersonListApp
//
//  Created by Aleksandr Kretov on 22.03.2022.
//

struct Person: Identifiable {
    
    let dataManager: DataManagerProtocol
    
    let id: Int
    let firstName: String
    let lastName: String
    let email: String
    let phoneNumber: String
    var fullName: String {
        "\(firstName) \(lastName)"
    }
    
    init(dataManager: DataManagerProtocol) {
        self.dataManager = dataManager
    }
    
    func createPersons() -> [Person] {
        var persons: [Person] = []
        for index in 0 ..< dataManager {
            let person = Person(
                id: index,
                firstName: DataManager.shared.names[index],
                lastName: DataManager.shared.surnames[index],
                email: DataManager.shared.emails[index],
                phoneNumber: DataManager.shared.phones[index])
            persons.append(person)
        }
        return persons
    }
}
