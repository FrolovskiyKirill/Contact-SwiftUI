//
//  DetailedContactView.swift
//  Contact SwiftUI
//
//  Created by Кирилл on 27.05.2022.
//

import SwiftUI

struct DetailedContactView: View {
    let persons: [Person]
    
    var body: some View {
        
            List(persons, id: \.self) { person in
                Section(header: Text("\(person.fullName)")) {
                    HStack {
                        Image(systemName: "phone").foregroundColor(.blue)
                        Text("\(person.phoneNumber)")
                    }
                    HStack {
                        Image(systemName: "tray").foregroundColor(.blue)
                        Text("\(person.email)")
                    }
                }
            }
            .listStyle(.plain)
            .navigationTitle("Numbers")
    }
}

struct DetailedContactView_Previews: PreviewProvider {
    static var previews: some View {
        DetailedContactView(persons: Person.getContactList())
    }
}
