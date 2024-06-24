//
//  ContentView.swift
//  Internet-SUI
//
//  Created by DISMOV on 08/06/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var monitor = InternetMonitor()
    
    var body: some View {
        if monitor.isConnected {
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
                Text("Hello, world!")
                Text("You're connected by \(monitor.connType)")
            }
            .padding()
        } else {
            VStack{
                Image(systemName: "wifi.exclamationmark")
                Text("Please check your connection")
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
