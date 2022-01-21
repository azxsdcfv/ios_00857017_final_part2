//
//  ItemViewListModels.swift
//  ios_00857017_final
//
//  Created by User14 on 2021/12/25.
//

import SwiftUI
import Foundation

struct works: Codable {
    let results: [songname]
}
struct songname: Codable {
    let name: String
}

struct ItemViewListModels: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
    
    func  fetchItem(term:String) {
        let urlStr = "https://www.googleapis.com/youtube/v3/playlistItems?part=snippet,contentDetails,status&playlistId=UCu2FqeCJmyxVEHS2PfZz8sw&key=AIzaSyA0mnvhNvkEy3K_zYAOgN6ySmehHp_TWj4&maxResults=40"
        if let url = URL(string: urlStr) {
            URLSession.shared.dataTask(with: url) { data, response , error in
                
                if let data = data {
                    do {
                        let decoder
                            = JSONDecoder()
                        decode.
                    } catch  {
                        print(error)
                    }
                }
            }.resume()
        }
    }
}

struct ItemViewListModels_Previews: PreviewProvider {
    static var previews: some View {
        ItemViewListModels()
    }
}
