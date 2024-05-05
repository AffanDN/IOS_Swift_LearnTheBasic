//
//  DatePickerControl.swift
//  LearnTheBasic
//
//  Created by Macbook Pro on 05/04/24.
//

import SwiftUI

struct DatePickerControl: View {
    @State private var date = Date()
    var body: some View {
        VStack {
            DatePicker("Choose Your Date", selection: $date, displayedComponents: [.date, .hourAndMinute])
                .datePickerStyle(.compact)
        }
        .padding()
    }
}

#Preview {
    DatePickerControl()
}
