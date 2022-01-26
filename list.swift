//
//  list.swift
//  ios_00857017_final
//
//  Created by User14 on 2021/12/25.
//

import SwiftUI

struct listView: View {
    @StateObject var fetcher = datafetch()
    
    var body: some View {
        VStack{
            Button(action: {fetcher.fetchItem()}) {
                    Label("refresh", systemImage: "folder.badge")
                }
            search(text: .constant(""))
            List {
                ForEach(fetcher.it,id:\.snippet.title) { item in
                    Text(item.snippet.title)
                }
            }
        }
    }
}

struct listView_Previews: PreviewProvider {
    static var previews: some View {
        listView()
    }
}
