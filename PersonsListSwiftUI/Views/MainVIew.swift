//
//  MainVIew.swift
//  PersonsListSwiftUI
//
//  Created by Aleksandr Kretov on 27.05.2022.
//

import SwiftUI

struct MainVIew: View {
    
    @StateObject private var personService = PersonsServices(dataManager: DataManager())
    
    var body: some View {
        TabView {
            ListView(persons: personService.persons, viewTitle: "Persons List")
                .tabItem {
                    Label("List", systemImage: "person.3.fill")
                }
            ContactsView(persons: personService.persons, viewTitle: "Contacts")
                .tabItem {
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
