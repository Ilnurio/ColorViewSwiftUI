//
//  ContentView.swift
//  ColorViewSwiftUI
//
//  Created by Ilnur on 12.06.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var red = Double.random(in: 0...255).rounded()
    @State private var green = Double.random(in: 0...255).rounded()
    @State private var blue = Double.random(in: 0...255).rounded()
    
    // Обертка FocusState следит за клавиатурой
    @FocusState private var isInputActive: Bool
    
    var body: some View {
        // ZStack для модификатора .onTapGesture
        // Без использования ZStack область жестов ограничивается вертикальным стеком, который заканчивается сразу после слайдеров
        ZStack {
            VStack(spacing: 40) {
                ColorView(red: red, green: green, blue: blue)
                
                VStack {
                    
                }
                
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
