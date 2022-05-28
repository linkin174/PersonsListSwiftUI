//
//  ContentView.swift
//  PersonsListSwiftUI
//
//  Created by Aleksandr Kretov on 27.05.2022.
//

import SwiftUI

struct ListView: View {
    let persons: [Person]
    let viewTitle: String

    var body: some View {
        NavigationView {
            List(persons) { person in
                NavigationLink(person.fullName,
                               destination: PersonDetailsView(person: person))
            }
            .listStyle(.plain)
            .navigationTitle(viewTitle)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ListView(persons: DataManager.shared.createPersons(), viewTitle: "Persons List")
    }
}
