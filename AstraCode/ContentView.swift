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
                        .font(.title3)
                        .multilineTextAlignment(.center)
                    
                    Text("Internet bilan aloqa yo'q")
                        .font(.title3)
                        .padding()
                        .multilineTextAlignment(.center)
                    
                    Text("Нет подключения к Интернету")
                        .font(.title3)
                        .multilineTextAlignment(.center)
                    
                    Button("Tekshirish") {
                        reload()
                    }
                    .padding()
                }
            }
        }
        .safeAreaPadding(0)
    }
}

#Preview {
    ContentView()
}
