import SwiftUI

/// This is the text view in the app whose colors can change randomly
/// after being tapped.
struct TextView: View {
    let text: LocalizedStringKey
    @State var color: Color
    
    let colors: [Color] = [
        .red, .green, .blue, .orange,
        .yellow, .purple,
        Color(red: 0.5, green: 0, blue: 0.5),
        Color(red: 0.5, green: 0.5, blue: 0.5),
        Color(red: 255/255, green: 215/255, blue: 0/255)
    ]
    var body: some View {
        Text(text)
            .font(.title2)
            .fontWeight(.semibold)
            .foregroundColor(Color.white)
            .padding()
            .background(color.opacity(0.8))
            .cornerRadius(/*@START_MENU_TOKEN@*/20.0/*@END_MENU_TOKEN@*/)
            .shadow(color: color.opacity(0.4), radius: 5, x:10, y:10)
            .onTapGesture {
                let length = colors.count
                let randomIndex = Int.random(in: 0..<length)
                color = colors[randomIndex]
            }
    }
}


struct TextView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black.opacity(0.7).ignoresSafeArea()
            
            VStack {
                TextView(text: "this", color: .red)
                TextView(text: "is", color: .purple)
                TextView(text: "sample", color: .green)
            }
        }
    }
}
