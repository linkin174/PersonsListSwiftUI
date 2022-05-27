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
        NavigationView {
            TabView {
                PersonsListView(persons: persons).tabItem {
                    Label("List", systemImage: "person.circle")
                }
                PersonsDeteailedView().tabItem {
                    Label("Card", systemImage: "tray.full.fill")
                }
            }
        }
        .navigationBarTitleDisplayMode(.large)
        .navigationTitle("Hello")
    }
}

struct MainVIew_Previews: PreviewProvider {
    static var previews: some View {
        MainVIew()
    }
}
