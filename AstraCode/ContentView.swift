//
//  ContentView.swift
//  AstraCode
//
//  Created by Ibrohim - Soft on 01/08/24.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var network = Network()
    
    func reload() {
       _ = network.checkConnection()
    }
    
    var body: some View {
        ZStack {
             
            if (true) {
                VStack{
                    WebView(url: URL(string: "https://app.boshqar.com/")!)
                }
            }
            else {
                VStack {
                    Text("No internet connection")
                        .font(.largeTitle)
                        .padding()
                        .padding()
                        .multilineTextAlignment(.center)
                    Button("Reload") {
                        reload()
                    }
                    .padding()
                }
            }
        }
        .ignoresSafeArea()
    }
}

#Preview {
    ContentView()
}
