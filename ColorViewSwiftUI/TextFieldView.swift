//
//  TextFieldView.swift
//  ColorViewSwiftUI
//
//  Created by Ilnur on 26.06.2023.
//

import SwiftUI

struct TextFieldView: View {
    @Binding var text: String
    
    let action: () -> Void
    
    var body: some View {
        TextField("0", text: $text) { _ in
            withAnimation {
                action()
            }
        }
        .frame(width: 55, alignment: .trailing)
        .multilineTextAlignment(.trailing)
        .textFieldStyle(.roundedBorder)
        .keyboardType(.numberPad)
    }
}

struct TextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.gray
            TextFieldView(text: .constant("128"), action: {})
        }
    }
}
