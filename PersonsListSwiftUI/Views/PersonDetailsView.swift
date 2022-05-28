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
        }
        .navigationTitle(person.fullName)
    }
}

extension PersonDetailsView {
    struct PersonImageView: View {
        let imageName: String
        var body: some View {
            HStack {
                Spacer()
                Image(systemName: imageName)
                    .resizable()
                    .frame(width: 200, height: 200)
                Spacer()
            }
        }
    }
}

struct PersonView_Previews: PreviewProvider {
    static var previews: some View {
        PersonDetailsView(person: DataManager().persons.first!)
    }
}
