//
//  Person.swift
//  PersonListApp
//
//  Created by Aleksandr Kretov on 22.03.2022.
//

struct Person: Identifiable {
    
    let id: Int
    let firstName: String
    let lastName: String
    let email: String
    let phoneNumber: String
    var fullName: String {
        "\(firstName) \(lastName)"
    }
    
}
