//
//  ContentView.swift
//  Alert
//
//  Created by 米国梁 on 2021/4/29.
//

import SwiftUI

struct ContentView: View {
    
    @State var show = false
    
    var body: some View {
        
        Button("Show Alert") {
            
            show.toggle()
        }
        .padding()
        .background(Color.blue)
        .foregroundColor(.white)
        .alert(isPresented: $show, content: {
            
            Alert(title: Text("App Message"), message: Text("Good Job!"), dismissButton: .cancel())
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
