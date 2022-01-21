//
//  File.swift
//  ios_00857017_final
//
//  Created by User14 on 2021/12/25.
//
import SwiftUI
import Foundation

class datafetch: ObservedObject {
    
    
    func fetchItem(term:String) {
        let urlString = "https://www.googleapis.com/youtube/v3/playlist?part=snippet,contentDetails,status&channelId=UCu2FqeCJmyxVEHS2PfZz8sw&key=AIzaSyA0mnvhNvkEy3K_zYAOgN6ySmehHp_TWj4&maxResults=20"
        if let url = URL(string:urlString) {
            do {
                let data = try Data(contentsOf: url)
                if let content = String(data: data,encoding: .utf8) {
                    print(content)
                }
            }
            catch {
                print(error)
            }
        }
    }
}
