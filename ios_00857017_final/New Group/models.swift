//
//  models.swift
//  ios_00857017_final
//
//  Created by User14 on 2021/12/25.
//

import Foundation

struct i: Codable {
    let items: [st]
    let nextPageToken: String
}

struct st: Codable {
    let snippet: detail
}

struct detail: Codable {
    let title: String
    let description: String
}
