//
//  ContentView.swift
//  PersonsListSwiftUI
//
//  Created by Aleksandr Kretov on 27.05.2022.
//

import SwiftUI

struct PersonsListView: View {
    let persons: [Person]
    
    var body: some View {
        List(persons) { person in
            Text(person.fullName)
        }.listStyle(.plain)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        PersonsListView(persons: Person.createPersons())
    }
}
