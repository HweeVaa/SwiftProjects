//
//  ContentView.swift
//  RatNote
//
//  Created by 서휘현 on 2023/04/14.
//

import SwiftUI

struct RatNoteView: View {
    var body: some View {
        ZStack {
            BackgroundView()
            VStack {
                TitleView()
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        RatNoteView()
    }
}
