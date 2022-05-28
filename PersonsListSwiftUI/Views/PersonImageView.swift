//
//  PersonImageView.swift
//  PersonsListSwiftUI
//
//  Created by Aleksandr Kretov on 28.05.2022.
//

import SwiftUI

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

struct PersonImageView_Previews: PreviewProvider {
    static var previews: some View {
        PersonImageView(imageName: "person.fill")
    }
}
