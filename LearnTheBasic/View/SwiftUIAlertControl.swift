//
//  SwiftUIAlertControl.swift
//  LearnTheBasic
//
//  Created by Macbook Pro on 05/04/24.
//

import SwiftUI

struct SwiftUIAlertControl: View {
    @State private var showAlert: Bool = false
    var body: some View {
        VStack {
            Button {
                showAlert = true
            } label: {
                Image(systemName: "trash")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            }
            .padding()
            .foregroundStyle(.white)
            .background(.red)
            .clipShape(Circle())
            .alert("Are you sure you want to delete this item ?", isPresented: $showAlert) {
                Button(role: .destructive) {
                    
                } label: {
                    Text("Delete")
                }

            }
        }
    }
}

#Preview {
    SwiftUIAlertControl()
}
