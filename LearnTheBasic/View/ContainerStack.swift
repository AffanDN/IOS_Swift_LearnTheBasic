//
//  ContainerStack.swift
//  LearnTheBasic
//
//  Created by Macbook Pro on 05/04/24.
//

import SwiftUI

struct ContainerStack: View {
    var body: some View {
        ZStack{
            LinearGradient(
                colors: [.indigo, .green, .blue],
                startPoint: .topLeading,
                endPoint: .bottomTrailing)
            .ignoresSafeArea()
            
            VStack {
                Text("Hello IOS Developer").font(.system(.largeTitle, design: .rounded)).fontWeight(.black)
                Spacer()
                Image(systemName: "applelogo")
                    .font(.system(size: 120))
                
                Spacer()
                
                HStack {
                    Image(systemName: "lock.open.applewatch")
                    Text("Unlock your Creativity")
                }
                .font(.title2)
                .fontWeight(.light)
                .padding(.bottom, 24)
            } .foregroundStyle(.white)
        }
    }
}

#Preview {
    ContainerStack()
}
