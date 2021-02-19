//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Troye on 2021/2/10.
//

import SwiftUI

struct CapsuleText: View {
    var text : String
    
    var body : some View {
        Text(text)
            .font(.largeTitle)
            .padding()
            .foregroundColor(.white)
            .background(Color.blue)
            .clipShape(Capsule())
    }
}


struct Title: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(.white)
            .padding()
            .background(Color.blue)
            .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}

extension View {
    func titleStyle() -> some View {
        self.modifier(Title())
    }
}

struct Watermark:ViewModifier {
    var text : String
    
    func body(content:Content) -> some View {
        ZStack(alignment: .bottomTrailing){
            content
            Text(text)
                .font(.caption)
                .foregroundColor(.white)
                .padding(5)
                .background(Color.black)
        }
    }
}

extension View {
    func watermarked(with text : String) -> some View {
        self.modifier(Watermark(text: text))
    }
}

struct ContentView: View {
    @State private var useRedText = false
    
    var body: some View {
        ZStack{
            Color.blue
                .frame(width: 300, height: 200)
                .watermarked(with: "Hacking With Swift")
//            VStack(spacing: 10){
//                CapsuleText(text: "First")
//                CapsuleText(text: "Second")
//            
//                Text("Hello world")
//                    .titleStyle()
//            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
