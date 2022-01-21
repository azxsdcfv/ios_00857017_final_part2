//
//  ContentView.swift
//  ios_00857017_final
//
//  Created by User14 on 2021/12/25.
//

import SwiftUI

struct ContentView: View {
    @StateObject var netDetecor = NetworkMonitor()
    @State private var showAlert = false
    var body: some View {
        if(netDetecor.status == .connected){
            TabView {
                home().tabItem { Label("首頁",systemImage:"house") }
                listView().tabItem {
                    Label("影片",systemImage: "play.tv")
                }
                news().tabItem {
                    Label("新聞",systemImage: "newspaper.fill")
                }
            }
        }
        else{
                    NoNetworkView(networkMonitor: netDetecor).onAppear {
                        showAlert=true
                    }.alert(isPresented: $showAlert){ () -> Alert in return Alert(title: Text("好的"))
                    
                }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
}
