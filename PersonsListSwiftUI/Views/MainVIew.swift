//
//  MainVIew.swift
//  PersonsListSwiftUI
//
//  Created by Aleksandr Kretov on 27.05.2022.
//

import SwiftUI

struct MainVIew: View {
    let persons = Person.createPersons()

    var body: some View {
        TabView {
            ListView(persons: persons, viewName: "Persons List").tabItem {
                Label("List", systemImage: "person.circle")
            }
            ContactsView(persons: persons, viewName: "Contacts").tabItem {
                Label("Contact", systemImage: "tray.full.fill")
            }
        }
    }
}

struct MainVIew_Previews: PreviewProvider {
    static var previews: some View {
        MainVIew()
    }
}
