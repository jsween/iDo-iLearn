//
//  ContentView.swift
//  iDo iLearn
//
//  Created by Jonathan Sweeney on 11/3/20.
//

import SwiftUI
// MARK: - PROPERTIES

// MARK: - BODY

struct ContentView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(0 ..< 6) { item in
                    CardView()
                }
            }
            .padding(20)
        }
    }
}

// MARK: - PREVIEW

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
