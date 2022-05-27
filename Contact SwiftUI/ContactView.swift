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
        
        NavigationView {
            TabView {
                List(persons, id: \.self) { person in
                    NavigationLink(
                        destination: DetailedContactInfo(
                            fullName: person.fullName,
                            phoneNumber: person.phoneNumber,
                            email: person.email
                        )
                    )
                    {
                        Text("\(person.fullName)")
                    }
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
            .navigationTitle("Contacts")
        }
    }
}

struct ContactView_Previews: PreviewProvider {
    static var previews: some View {
        ContactView(persons: Person.getContactList())
    }
}
