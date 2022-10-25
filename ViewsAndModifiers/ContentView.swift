//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Aleksey Nosik on 29.09.2022.
//

import SwiftUI

struct LargeBlueTitle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle.bold())
            .font(.custom("A day without sun", size: 50))
    }
}

extension View {
    func personalTitle() -> some View {
        modifier(LargeBlueTitle())
    }
}

struct ContentView: View {
    @State private var useBtn = false
    
    var body: some View {
        VStack {
            Button("test1!") {
                print(type(of: self.body))
            }
            .frame(width: 200, height: 200)
            .background(.red)
            .padding()
            .background(.green)
            .padding()
            .background(.blue)
            .padding()
            .background(.yellow)
            
            
            Button("Test2") {
                useBtn.toggle()
            }
            .foregroundColor(useBtn ? .red : .blue)
        
            Button("Personal"){
                useBtn.toggle()
            }
                .personalTitle()
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
