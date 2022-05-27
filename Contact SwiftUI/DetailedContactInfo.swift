//
//  ContactRowView.swift
//  Contact SwiftUI
//
//  Created by Кирилл on 26.05.2022.
//

import SwiftUI

struct DetailedContactInfo: View {
    
    let fullName: String
    let phoneNumber: String
    let email: String
    
    var body: some View {
        
        List {
            Image(systemName: "person.fill")
                .resizable()
                .scaledToFit()
                .frame(height: 150, alignment: .center)
            HStack {
                Image(systemName: "phone").foregroundColor(.blue)
                Text("\(phoneNumber)")
            }
            HStack {
                Image(systemName: "tray").foregroundColor(.blue)
                Text("\(email)")
            }
        }
        .navigationTitle("\(fullName)")
    }
}

//struct DetailedContactInfo_Previews: PreviewProvider {
//    static var previews: some View {
//        DetailedContactInfo()
//    }
//}
