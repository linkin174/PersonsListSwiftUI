//
//  MainVIew.swift
//  PersonsListSwiftUI
//
//  Created by Aleksandr Kretov on 27.05.2022.
//

import SwiftUI

struct MainVIew: View {
    
    let dataManager: DataManagerProtocol
    
    init(dataManager: DataManagerProtocol) {
        self.dataManager = dataManager
    }
    
    var body: some View {
        TabView {
            ListView(persons: dataManager.createPersons(), viewTitle: "Persons List")
                .tabItem {
                    Label("List", systemImage: "person.3.fill")
                }
            ContactsView(persons: dataManager.createPersons(), viewTitle: "Contacts")
                .tabItem {
                    Label("Contact", systemImage: "tray.full.fill")
                }
        }
    }
}

struct MainVIew_Previews: PreviewProvider {
    static var previews: some View {
        MainVIew(dataManager: DataManager.shared)
    }
}
