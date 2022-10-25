//
//  OwnStyles.swift
//  ViewsAndModifiers
//
//  Created by Aleksey Nosik on 29.09.2022.
//

import SwiftUI

struct MyTitle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(.white)
            .padding()
            .background(.brown)
            .clipShape(RoundedRectangle(cornerRadius: 20))
    }
}

extension View {
    func titleView() -> some View {
        modifier(MyTitle())
    }
}

struct Watermark: ViewModifier {
    var text: String
    
    func body(content: Content) -> some View {
        ZStack(alignment: .bottomTrailing) {
            content
            
            Text(text)
                .font(.caption)
                .foregroundColor(.white)
                .padding()
                .background(.black)
        }
    }
}

extension View {
    func watermarked(text: String) -> some View {
        modifier(Watermark(text: text))
    }
}

struct OwnStyles: View {
    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//            .modifier(MyTitle())
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .titleView()
        
        Color.blue
            .frame(width: 300, height: 200)
            .watermarked(text: "by Alex")
            
    }
}

struct OwnStyles_Previews: PreviewProvider {
    static var previews: some View {
        OwnStyles()
    }
}
