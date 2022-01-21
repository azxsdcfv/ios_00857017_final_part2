//
//  newsmodels.swift
//  ios_00857017_final
//
//  Created by User14 on 2021/12/25.
//

import Foundation

struct NEWS: Codable {
    let articles: [newsdata]
}

struct newsdata: Codable {
    let title: String
    let description: String
    let url: URL
}
