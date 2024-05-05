//
//  FormControl.swift
//  LearnTheBasic
//
//  Created by Macbook Pro on 05/04/24.
//

import SwiftUI

struct FormControl: View {
    @State private var firstName: String = ""
    @State private var lastName: String = ""
    var body: some View {
        Form {
            Section {
                TextField("First Name", text: $firstName)
                TextField("Last Name", text: $lastName)
            } header: {
                Text("Account Info".uppercased())
            } footer: {
                Text("Please Fill the text field")
            }
        }
    }
}

#Preview {
    FormControl()
}
