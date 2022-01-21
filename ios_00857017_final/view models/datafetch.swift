//
//  datafetch.swift
//  ios_00857017_final
//
//  Created by User14 on 2021/12/25.
//

import Foundation

class datafetch: ObservableObject {
    @Published var it:[st] = []
    init(){
        fetchItem()
    }
    func fetchItem() {
        let urlString = "https://youtube.googleapis.com/youtube/v3/search?part=snippet&channelId=UCu2FqeCJmyxVEHS2PfZz8sw&maxResults=20&key=AIzaSyBpv9EwdAT7fx39ZU6gZMOLK53k5z3f1Wk"
        print("1")
        if let url = URL(string:urlString) {
            URLSession.shared.dataTask(with: url) { data, response , error in
                if let data = data{
                    print("22")
                    do {
                        let decoder = JSONDecoder()
                        decoder.dateDecodingStrategy = .iso8601
                        let w = try decoder.decode(i.self,
                                                   from: data)
                        
                        print("123")
                        print(w)
                        DispatchQueue.main.async {
                            self.it = w.items
                        }
                    } catch {
                        print(error)
                    }
                }
                else{
                    print("no internet")
                }
            }.resume()
        }
    }
}

