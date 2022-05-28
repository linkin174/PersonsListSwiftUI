//
//  DataManager.swift
//  PersonListApp
//
//  Created by Aleksandr Kretov on 22.03.2022.
//

protocol DataManagerProtocol {
    func createPersons() -> [Person]
}

final class DataManager: DataManagerProtocol {
    
    static let shared: DataManagerProtocol = DataManager()
    
    private let names = ["Alex", "Tim", "Phil", "Alison", "Robert", "Amanda",
                         "Andrew", "Samantha", "Stephany", "Rebecca"].shuffled()
    
    private let surnames = ["Smith", "Cook", "Janson", "Peterson", "Pennyworth", "Blake",
                            "Williams", "Gibson", "Martin", "Jordan"].shuffled()
    
    private var emails: [String] {
        generateEmails(names.count)
    }
    
    private var phones: [String] {
        generatePhones(names.count)
    }
    
    private init (){}

    private func generateEmails(_ quantity: Int) -> [String] {
        var emails: [String] = []
        for _ in 1...quantity {
            let providers = ["gmail.com", "hotmail.com", "icloud.com",
                             "live.com", "yahoo.com", "livemail.com"]
            let name = randomString(length: Int.random(in: 6...8))
            let email = "\(name)@\(providers.randomElement() ?? "none")"
            emails.append(email)
        }
        return emails
    }

    private func randomString(length: Int) -> String {
        let letters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
        return String((0 ..< length).map { _ in letters.randomElement() ?? "*" })
    }

    private func generatePhones(_ quantity: Int) -> [String] {
        var phones: [String] = []
        for _ in 1...quantity {
            let randomNumber = Int.random(in: 500000000...999999999)
            var number = String(randomNumber)
            let firstDashIndex = number.index(number.startIndex, offsetBy: 3)
            let secondDashIndex = number.index(firstDashIndex, offsetBy: 4)
            number.insert("-", at: firstDashIndex)
            number.insert("-", at: secondDashIndex)
            phones.append(number)
        }
        return phones
    }
    
    func createPersons() -> [Person] {
        var persons: [Person] = []
        for index in 0 ..< names.count {
            let person = Person(
                id: index + 1,
                firstName: names[index],
                lastName: surnames[index],
                email: emails[index],
                phoneNumber: phones[index])
            persons.append(person)
        }
        return persons
    }
}

