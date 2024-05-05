//
//  ContentView.swift
//  LearnTheBasic
//
//  Created by Macbook Pro on 05/04/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        // Vstack merupakan container / pembungkus
        // Modifier = ditandai dengan . (dot)
        VStack {
            Image(systemName: "cloud.hail.fill")
                .font(.system(size: 120))
                .symbolRenderingMode(.palette)
                .foregroundStyle(.purple, .blue)
                .shadow(radius: 10, x: 0, y: 10)
            Image(.GF)
                .resizable()
                .scaledToFill()
//            .scaledToFill() = fit sama layar
                .frame(width:300 , height: 200)
                .clipShape(RoundedRectangle(cornerRadius: 20))
            Group {
                let url = URL(string: "https://resizing.flixster.com/-XZAfHZM39UwaGJIFWKAE8fS0ak=/v3/t/assets/p9248224_b_v8_ax.jpg")
                
                AsyncImage(url: url) {
                    image in
                    image.resizable()
                        .scaledToFit()
                        .clipShape(Rectangle())
                } placeholder: {
                    ProgressView()
                }
                .frame(width: 300, height: 200)
            }
            .overlay {
//                Leading : kiri /  awal, Trailing : kanan / alhir
                ZStack (alignment: .bottom) {
                    Rectangle()
                        .opacity(0.7)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                    HStack {
                        Image(systemName: "cloud.sun.rain")
                            .symbolRenderingMode(.palette)
                            .foregroundStyle(.white, .yellow)
                            .font(.largeTitle)
                        Text("This is Cloud")
                            .symbolRenderingMode(.palette)
                            .foregroundStyle(.white)
                            .fontWeight(.black)
                    }.padding()
                }
            }
            Text("Hello, IOS Developer")
            Text("This is my Journey")
        }
    }
}

#Preview {
    ContentView()
}
