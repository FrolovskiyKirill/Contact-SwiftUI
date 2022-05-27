//
//  ContactRowView.swift
//  Contact SwiftUI
//
//  Created by Кирилл on 26.05.2022.
//

import SwiftUI

struct ContactRowView: View {
    
    
    let person = Person.getContactList()
    
    var body: some View {
        Text("123")
    }
}

struct ContactRowView_Previews: PreviewProvider {
    static var previews: some View {
        ContactRowView()
    }
}
