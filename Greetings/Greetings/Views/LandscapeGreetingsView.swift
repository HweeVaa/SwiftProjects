
import SwiftUI

/// This is the main view of the Greetings App.
struct LandscapeGreetingsView: View {
    
    var body: some View {
        ZStack {
            BackgroundView()
            
            HStack {
                
                TitleView()
                
                Spacer()
                
                MessagesView()
            }
        }

    }
}

struct LandscapeGreetingsView_Previews: PreviewProvider {
    static var previews: some View {
        LandscapeGreetingsView()
    }
}
