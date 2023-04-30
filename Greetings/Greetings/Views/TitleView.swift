//
//  TitleView.swift
//  Greetings
//
//  Created by 서휘현 on 2023/03/28.
//

import SwiftUI

/// This contains the App title and a randomly changing caption
/// upon tapping the caption and a colorful circle that rotates on tap.
struct TitleView: View {
    @State var isRotated: Bool = false
    @State var captionIndex: Int = 0
    
    let caption: [LocalizedStringKey] = [
        LocalizedStringKey("Exploring iOS 15 programming"),
        LocalizedStringKey("Learning how to bake"),
        LocalizedStringKey("Programming recipes"),
        LocalizedStringKey("A quest for knowledge")
    ]
    
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing:0) {
                Text("Greetings")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                Text(caption[captionIndex])
                    .font(.headline)
                    .fontWeight(.bold)
            }.padding()
                .onTapGesture {
                    captionIndex = Int.random(in: 0..<caption.count)
                }
            
            Spacer()
            
            Circle()
                .strokeBorder(AngularGradient(gradient: Gradient(colors: [
                    .pink, .purple, .blue, .orange, .yellow
                ]),
                center: .center,
                angle: .zero),
                lineWidth: 15)
                .rotationEffect(isRotated ? .zero: .degrees(180))
            .frame(maxWidth:70, maxHeight: 70)
            .onTapGesture {
                withAnimation( Animation.spring()){
                    isRotated.toggle()
                }
            }
        }
        .padding()
    }
}

struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView()
    }
}
