//
//  PersonServices.swift
//  PersonsListSwiftUI
//
//  Created by Aleksandr Kretov on 28.05.2022.
//

import Foundation

class PersonsServices: ObservableObject {
    
    @Published var persons = [Person]()
    
    private let dataManager: DataManager
    
    init(dataManager: DataManager) {
        self.dataManager = dataManager
        self.persons = createPersons()
    }
    
    private func createPersons() -> [Person] {
        var persons: [Person] = []
        for index in 0 ..< dataManager.names.count {
            let person = Person(
                id: index + 1,
                firstName: dataManager.names[index],
                lastName: dataManager.surnames[index],
                email: dataManager.emails[index],
                phoneNumber: dataManager.phones[index])
            persons.append(person)
        }
        return persons
    }
}
