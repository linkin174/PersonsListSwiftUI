//
//  PersonView.swift
//  PersonsListSwiftUI
//
//  Created by Aleksandr Kretov on 27.05.2022.
//

import SwiftUI

struct PersonDetailsView: View {
    let person: Person

    var body: some View {
        Form {
            PersonImageView(imageName: "person.fill")
            Label(person.phoneNumber, systemImage: "phone").font(.title3)
            Label(person.email, systemImage: "person.text.rectangle").font(.title3)
        }.navigationTitle(person.fullName)
    }
}

struct PersonView_Previews: PreviewProvider {
    static var previews: some View {
        PersonDetailsView(person: Person.createPersons().first!)
    }
}
