//
//  ContentView.swift
//  iDo iLearn
//
//  Created by Jonathan Sweeney on 11/3/20.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    var cards: [Card] = cardData
    
    // MARK: - BODY
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(cards) { card in
                    CardView(card: card)
                }
            }
            .padding(20)
        }
    }
}

// MARK: - PREVIEW

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(cards: cardData)
    }
}
