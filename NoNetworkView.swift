//
//  NoNetworkView.swift
//  ios_00857017_final
//
//  Created by User14 on 2021/12/26.
//

import SwiftUI

struct NoNetworkView: View {
    @ObservedObject var networkMonitor:NetworkMonitor
    var body: some View {
        
        VStack {
            Text("沒有網路連線😢").font(.title)
            Text("當您連上網路時，一切都會變得不一樣")
        }
    }
}

struct NoNetworkView_Previews: PreviewProvider {
    static var networkMonitorTemp = NetworkMonitor()
    static var previews: some View {
        NoNetworkView(networkMonitor: networkMonitorTemp)
    }
}
