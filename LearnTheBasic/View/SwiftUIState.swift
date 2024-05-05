//
//  SwiftUIState.swift
//  LearnTheBasic
//
//  Created by Macbook Pro on 05/04/24.
//

import SwiftUI

struct SwiftUIState: View {
    @State private var isPlaying: Bool = false
    @State private var counterPlayerOne = 1
    @State private var counterPlayerTwo = 1
    var body: some View {
        VStack {
            Button {
                // fungsi toggle() ini digunakan ketika tombol ditekan. Jadi, setiap kali tombol ditekan, variabel isPlaying akan beralih nilainya antara true dan false
                isPlaying.toggle()
            } label: {
                Image(systemName: isPlaying ? "stop.circle.fill" : "play.circle.fill")
                    .font(.system(size: 150))
                    .foregroundColor(isPlaying ? .green : .indigo)
            }
            ListPlayer(counterPlayerOne: $counterPlayerOne, counterPlayerTwo: $counterPlayerTwo)
            
            Button {
                counterPlayerOne = 0
                counterPlayerTwo = 0
            } label: {
                Text("Reset")
            }
        }
    }
}

#Preview {
    SwiftUIState()
}

struct ListPlayer: View {
    @Binding var counterPlayerOne: Int
    @Binding var counterPlayerTwo: Int
    var body: some View {
        List {
            HStack (spacing: 40) {
                Text("Counter Player one")
                Text("\(counterPlayerOne)")
            }
            .onTapGesture {
                counterPlayerOne += 1
            }
            HStack (spacing: 40) {
                Text("Counter Player two")
                Text("\(counterPlayerTwo)")
            }
            .onTapGesture {
                counterPlayerTwo += 1
            }
        }
    }
}
