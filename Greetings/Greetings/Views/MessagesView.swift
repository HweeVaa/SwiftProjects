//
//  MessagesView.swift
//  Greetings
//
//  Created by 서휘현 on 2023/03/28.
//

import SwiftUI

/// This is a view that contains
/// a list of messages that change colors
/// randomly upon being clicked
struct MessagesView: View {
    let messages = [
        DataItemModel(text: LocalizedStringKey("Hello there!"), color: .green),
        DataItemModel(text: LocalizedStringKey("Welcome to Swift programming"), color: .gray  ),
        DataItemModel(text: LocalizedStringKey("Are you ready to"), color: .yellow),
        DataItemModel(text: LocalizedStringKey("start exploring?"), color: .red),
        DataItemModel(text: LocalizedStringKey("Boom!"), color: .purple)
    ]
    var body: some View {
        VStack(alignment: .leading) {
            ForEach(messages, content: {dataItem in TextView(text: dataItem.text, color: dataItem.color)
            })
        }
        .padding()
    }
}

struct MessagesView_Previews: PreviewProvider {
    static var previews: some View {
        MessagesView()
    }
}
