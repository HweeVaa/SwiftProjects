//
//  BackgroundView.swift
//  RatNote
//
//  Created by 서휘현 on 2023/04/14.
//

import SwiftUI

struct BackgroundView: View {
    var body: some View {
        LinearGradient(colors: [Color(red: 127/255,
                                      green: 0/255,
                                      blue: 61/255),
                                Color(red: 95/255,
                                      green: 0/255,
                                      blue: 170/255),
                                Color(red: 0/255,
                                      green: 75/255,
                                      blue: 95/255)
                               ],
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing)
        .opacity(0.4)
            .ignoresSafeArea()
    }
}

struct BackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundView()
    }
}
