//
//  ColorPickerControlView.swift
//  LearnTheBasic
//
//  Created by Macbook Pro on 05/04/24.
//

import SwiftUI

struct ColorPickerControlView: View {
    @State private var selectedColor: Color = .red
    var body: some View {
        VStack {
            ColorPicker(
                "Select a Color: ",
                selection:$selectedColor,
                supportsOpacity:true)
            
            RoundedRectangle(cornerRadius: 25.0)
                .fill(selectedColor)
                .frame(height: 100)
        }
        
        .padding()
    }
}

#Preview {
    ColorPickerControlView()
}
