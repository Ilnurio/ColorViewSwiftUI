//
//  ContentView.swift
//  ColorViewSwiftUI
//
//  Created by Ilnur on 12.06.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var redComponent = 20.0
    @State private var greenComponent = 40.0
    @State private var blueComponent = 60.0
    
    @State private var redText = "20"
    @State private var greenText = "40"
    @State private var blueText = "60"
    
    let valueRange: ClosedRange<Double> = 0...255
    
    var body: some View {
        ZStack {
            Color.purple
                .ignoresSafeArea()
            VStack(alignment: .center, spacing: 50) {
                Color(
                    red: redComponent / 255,
                    green: greenComponent / 255,
                    blue: blueComponent / 255
                )
                .frame(height: 200)
                ColorSliderView(
                    value: $redComponent,
                    text: $redText,
                    range: valueRange,
                    tint: .red
                )
                ColorSliderView(
                    value: $greenComponent,
                    text: $greenText,
                    range: valueRange,
                    tint: .green
                )
                ColorSliderView(
                    value: $blueComponent,
                    text: $blueText,
                    range: valueRange,
                    tint: .blue
                )
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ColorSliderView: View {
    @Binding var value: Double
    @Binding var text: String
    
    let range: ClosedRange<Double>
    let tint: Color
    
    var body: some View {
        HStack {
            Text("\(text)")
                .font(.system(size: 20))
            Slider(
                value: $value,
                in: range,
                step:1,
                onEditingChanged: { _ in updateValue() }
            )
            .tint(tint)
        }
    }
    
    private func updateValue() {
        text = String(format: "%.0f", value)
    }
}
