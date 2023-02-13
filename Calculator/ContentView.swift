//
//  ContentView.swift
//  SalesTax-SwiftUI
//
//  Created by Angel Osoria on 2023-02-09.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        VStack {
            
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("This is a test")
        }.padding()
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
