//
//  pan.swift
//  ios_00857017_final
//
//  Created by User14 on 2021/12/26.
//

import SwiftUI

struct MemeCreatorApp: App {
    @StateObject private var fetcher = PandaCollectionFetcher()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                MemeCreator()
                    .environmentObject(fetcher)
            }
            .navigationViewStyle(.stack)
        }
    }
}
