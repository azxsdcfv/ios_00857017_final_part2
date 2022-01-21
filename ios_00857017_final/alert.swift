//
//  alert.swift
//  ios_00857017_final
//
//  Created by User14 on 2021/12/26.
//

import SwiftUI

struct alert: View {
    var body: some View {
        let answer = ["請檢察網路"].randomElement()!
        return Alert(title: Text(answer))
    }
}

struct alert_Previews: PreviewProvider {
    static var previews: some View {
        alert()
    }
}
