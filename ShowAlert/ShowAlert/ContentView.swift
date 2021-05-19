//
//  ContentView.swift
//  ShowAlert
//
//  Created by Thongchai Subsaidee on 19/5/2564 BE.
//

import SwiftUI

struct ContentView: View {
    @State private var isAlert: Bool = false
    var body: some View {
       
        Button(action: {
            self.isAlert = true
        }, label: {
            Text("Button")
                .foregroundColor(.white)
                .padding()
                .background(Color.red)
                .cornerRadius(10)
        })
        .alert(isPresented: $isAlert, content: {
            Alert(title: Text("Show Alert...."))
        })
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
