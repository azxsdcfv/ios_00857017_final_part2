//
//  news.swift
//  ios_00857017_final
//
//  Created by User14 on 2021/12/25.
//

import SwiftUI

struct news: View {
    @StateObject var fetchern = newsfetch()
    
    var body: some View {
        VStack{
            Button(action: {fetchern.fetchnews()}) {
                    Label("refresh", systemImage: "folder.badge")
                }
            search(text: .constant(""))
            NavigationView{
                List {
                    ForEach(fetchern.n,id:\.title){
                        item in
                        NavigationLink(
                            destination:
                                navigation_url(U: item.description),
                            label: {
                                Text(item
                                .title)
                            }
                        )
                    }
                }
            }
        }
    }
}

struct news_Previews: PreviewProvider {
    static var previews: some View {
        news()
    }
}
