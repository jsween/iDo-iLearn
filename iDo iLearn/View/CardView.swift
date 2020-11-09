//
//  CardView.swift
//  iDo iLearn
//
//  Created by Jonathan Sweeney on 11/8/20.
//

import SwiftUI

struct CardView: View {
    // MARK: - PROPERTIES
    
    var gradient: [Color] = [Color("Color01"), Color("Color02")]
    let hapticImpact = UIImpactFeedbackGenerator(style: .medium)
    // MARK: - BODY
    
    var body: some View {
        ZStack {
            Image("developer-no1")
            
            VStack {
                Text("SwiftUI")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.center)
                Text("JSween")
                    .fontWeight(.light)
                    .italic()
            }//: VStack
            .offset(y: -218)
            .foregroundColor(.white)
            
            Button(action: {
                print("Button was pressed")
                hapticImpact.impactOccurred()
            }) {
                HStack {
                    Text("Learn".uppercased())
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .accentColor(.white)
                    Image(systemName: "arrow.right.circle")
                        .font(Font.title.weight(.medium))
                        .accentColor(.white)
                }//: HStack
                .padding(.vertical)
                .padding(.horizontal, 24)
                .background(LinearGradient(gradient: Gradient(colors: gradient), startPoint: .leading, endPoint: .trailing))
                .clipShape(Capsule())
                .shadow(color: Color("ColorShadow"), radius: 6, x: 0, y: 3)
            }//: Button
            .offset(y: 210)
        }//: ZStack
        .frame(width: 335, height: 545)
        .cornerRadius(60)
        .shadow(radius: 8)
        .background(LinearGradient(gradient: Gradient(colors: gradient), startPoint: .top, endPoint: .bottom))
    }
}

// MARK: - PREVIEW

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
