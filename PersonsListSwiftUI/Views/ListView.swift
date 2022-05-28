//
//  ContentView.swift
//  PersonsListSwiftUI
//
//  Created by Aleksandr Kretov on 27.05.2022.
//

import SwiftUI

struct ListView: View {
    let persons: [Person]
    let viewName: String

    var body: some View {
        NavigationView {
            List(persons) { person in
                ZStack(alignment: .leading) {
                    Text(person.fullName)
                    NavigationLink("", destination: PersonDetailsView(person: person))
                }
            }
            .listStyle(.plain)
        .navigationTitle(viewName)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ListView(persons: Person.createPersons(), viewName: "Contacts")
    }
}
