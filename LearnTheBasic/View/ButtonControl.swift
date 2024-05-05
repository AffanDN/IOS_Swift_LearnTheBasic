//
//  ButtonControl.swift
//  LearnTheBasic
//
//  Created by Macbook Pro on 05/04/24.
//

import SwiftUI

struct ButtonControl: View {
    var body: some View {
        VStack (spacing:24) {
            // 1. Standard Button
            Button {
                print("Standard Button Tapped")
            } label: {
                Text ("Standard Button")
            }
            .buttonStyle(.borderedProminent)
            .controlSize(.extraLarge)
            
            // 2. Role Button
            Button(role: .destructive){
                
            } label: {
                Text ("Destructive Button")
            }
            .buttonStyle(.bordered)
            .controlSize(.extraLarge)
            
            // 3. Custom Button
            Button {
                print("Hello IOS Developer Button Tapped")
            } label: {
                Text ("Hello IOS Developer")
                    .padding()
                    .background(.purple)
                    .foregroundStyle(.white)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .clipShape(Capsule())
            }
            
            // 4. Custom Button 2
            Button {
                
            } label: {
                Text("Magnificent Button")
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .font(.title)
                    .padding()
                    .background(.purple)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    .foregroundStyle(.white)
                    .padding()
                    .overlay {
                        RoundedRectangle (cornerRadius: 40).stroke(.purple, lineWidth: 5)
                    }
            }
            
            // 5. Image Button
            Button {
                
            } label: {
                Image(systemName: "power.circle.fill").padding()
                    .background(.green)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .font(.largeTitle)
                    .foregroundStyle(.white)
            }
            
            // 6. Button Linear Gradient
            Button {
                
            } label: {
                Label("Add Stock", systemImage: "flame")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            }
            .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: .infinity)
            .padding()
            .foregroundStyle(.white)
            .background(LinearGradient(colors: [.green, .mint], startPoint: .trailing, endPoint: .leading))
            .clipShape(RoundedRectangle(cornerRadius: 20))
        }
        .padding()
    }
}

#Preview {
    ButtonControl()
}
