//
//  ContentView.swift
//  ColorViewSwiftUI
//
//  Created by Ilnur on 12.06.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var redComponent = 0.5
    @State private var greenComponent = 0.5
    @State private var blueComponent = 0.5
    
    var body: some View {
        ZStack {
            Color.purple
                .ignoresSafeArea()
            VStack {
                Color(
                    red: redComponent,
                    green: greenComponent,
                    blue: blueComponent
                )
                .padding(EdgeInsets(top: 20, leading: 16, bottom: 300, trailing: 16))
                ColorSliderView(value: $redComponent, accentColor: .red)
                ColorSliderView(value: $greenComponent, accentColor: .green)
                ColorSliderView(value: $blueComponent, accentColor: .blue)
            }
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
    let accentColor: Color
    
    var body: some View {
        HStack {
            Text("\(lround(value))")
                .font(.system(size: 20))
            Slider(value: $value, in: 0...255, step: 1)
                .accentColor(accentColor)
        }
        .padding()
    }
}
