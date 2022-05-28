//
//  PersenDetailView.swift
//  PersonsListSwiftUI
//
//  Created by Aleksandr Kretov on 27.05.2022.
//

import SwiftUI

struct ContactsView: View {
    let persons: [Person]
    let viewName: String

    var body: some View {
        NavigationView {
            List(persons) { person in
                Section(person.fullName) {
                    Label(person.email, systemImage: "person.text.rectangle")
                    Label(person.phoneNumber, systemImage: "phone")
                }
            }
            .navigationTitle(viewName)
        }
       
    }
}

struct PersenDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ContactsView(persons: Person.createPersons(), viewName: "Emails")
    }
}
