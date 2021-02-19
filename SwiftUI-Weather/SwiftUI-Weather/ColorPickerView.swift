//
//  ColorPickerView.swift
//  SwiftUI-Weather
//
//  Created by Troye on 2021/2/14.
//

import SwiftUI

struct ColorPickerView: View {
    
    @State private var selectedColor : Color = .red
    
    var body: some View {
        VStack{
            Circle()
                .foregroundColor(selectedColor)
                .frame(width: 200, height: 200)
                .padding()
            ColorPicker("Change Circle Color", selection: $selectedColor)
                .padding()
        }
    }
}

struct ColorPickerView_Previews: PreviewProvider {
    static var previews: some View {
        ColorPickerView()
    }
}
