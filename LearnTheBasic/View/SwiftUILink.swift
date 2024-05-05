//
//  SwiftUILink.swift
//  LearnTheBasic
//
//  Created by Macbook Pro on 05/04/24.
//

import SwiftUI

struct SwiftUILink: View {
    @State private var showWebView = false
    var body: some View {
        VStack {
            // Cara pertama
            let url = URL(string: "https://playvalorant.com/")
            Link("Website Valorant", destination: url!)
            
            // Teknik Kedua
            Link(destination: url!) {
                HStack {
                    Image(systemName: "applelogo")
                    Text("Main Game Valorant Yuk")
                }
                .frame(width: 250, height: 70)
                .foregroundStyle(.white)
                .background(.black)
                .clipShape(RoundedRectangle(cornerRadius: 16))
            }
            
            // Teknik ketiga
            Button {
                showWebView = true
            } label: {
                Text("Show website Valorant")
            }
            .fullScreenCover(isPresented: $showWebView, content: {
                WebView(url: url!)
            })
        }
    }
}

#Preview {
    SwiftUILink()
}
