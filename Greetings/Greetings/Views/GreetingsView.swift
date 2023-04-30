//
//  ContentView.swift
//  Greetings
//
//  Created by 서휘현 on 2023/03/24.
//

import SwiftUI



/// This is the main view of the Greetings App.
struct GreetingsView: View {
    
    var body: some View {
        ZStack {
            BackgroundView()
            
            VStack(alignment: .leading) {
                
                TitleView()
                
                Spacer()
                
                MessagesView()
                
                Spacer()
                Spacer()

            }
        }

    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        GreetingsView()
        GreetingsView()
            .preferredColorScheme(.dark)
    }
}





