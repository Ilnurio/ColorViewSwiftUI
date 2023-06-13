//
//  ContentView.swift
//  ColorViewSwiftUI
//
//  Created by Ilnur on 12.06.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var redComponent = 0.3
    @State private var greenComponent = 0.4
    @State private var blueComponent = 0.5
    
    var body: some View {
        ZStack {
            Color.purple
                .ignoresSafeArea()
            VStack(alignment: .center, spacing: 20) {
                Color(
                    red: redComponent,
                    green: greenComponent,
                    blue: blueComponent
                ).padding()
                ColorSliderView(value: $redComponent, tint: .red)
                ColorSliderView(value: $greenComponent, tint: .green)
                ColorSliderView(value: $blueComponent, tint: .blue)
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
    let tint: Color
    
    var body: some View {
        HStack {
            Text("\(lround(value))")
                .font(.system(size: 20))
            Slider(value: $value, in: 0...255, step: 1.0)
                .tint(tint)
        }
    }
}
