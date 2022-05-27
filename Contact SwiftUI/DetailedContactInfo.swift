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
            Image(systemName: "person.2.wave.2.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150)
            Text("\(phoneNumber)")
            Text("\(email)")
        }
        .navigationTitle("\(fullName)")
    }
}

//struct DetailedContactInfo_Previews: PreviewProvider {
//    static var previews: some View {
//        DetailedContactInfo()
//    }
//}
