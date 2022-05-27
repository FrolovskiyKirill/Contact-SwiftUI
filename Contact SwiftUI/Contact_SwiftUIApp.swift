//
//  Contact_SwiftUIApp.swift
//  Contact SwiftUI
//
//  Created by Кирилл on 26.05.2022.
//

import SwiftUI

@main
struct Contact_SwiftUIApp: App {
    var body: some Scene {
        WindowGroup {
            ContactView(persons: Person.getContactList())
        }
    }
}
