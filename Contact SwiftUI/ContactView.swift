//
//  ContentView.swift
//  Contact SwiftUI
//
//  Created by Кирилл on 26.05.2022.
//

import SwiftUI

struct ContactView: View {
    
    let persons: [Person]
    
    var body: some View {
        
        TabView {
            List(persons, id: \.self) { person in
                Text("\(person.fullName)")
            }
            .listStyle(.plain)
            .tabItem {
                Image(systemName: "person.crop.circle")
                Text("Contacts")
            }
            DetailedContactView(persons: persons)
                .tabItem {
                    Image(systemName: "phone.fill")
                    Text("Numbers")
                }
        }

    }
}

struct ContactView_Previews: PreviewProvider {
    static var previews: some View {
        ContactView(persons: Person.getContactList())
    }
}
