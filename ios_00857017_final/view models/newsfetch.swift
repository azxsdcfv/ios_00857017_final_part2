//
//  newsfetch.swift
//  ios_00857017_final
//
//  Created by User14 on 2021/12/25.
//

import Foundation

class newsfetch: ObservableObject {
    @Published var n:[newsdata] = []
    init(){
        fetchnews()
    }
    func fetchnews() {
        let urlString = "https://newsapi.org/v2/everything?qInTitle=%22%E7%8E%8B%E5%8A%9B%E5%AE%8F%22&from=2021-12-25&sortBy=popularity&apiKey=04dec742413d4fe59951bab6a471c04b"
        
        print("1")
        if let url = URL(string:urlString) {
            URLSession.shared.dataTask(with: url) { data, response , error in
                if let data = data{
                    print("22")
                    do {
                        let decoder = JSONDecoder()
                        decoder.dateDecodingStrategy = .iso8601
                        let w = try decoder.decode(NEWS.self,
                                                   from: data)
                        
                        print("123")
                        print(w)
                        DispatchQueue.main.async {
                            self.n = w.articles
                        }
                    } catch {
                        print(error)
                    }
                }
            }.resume()
        }
    }
}
