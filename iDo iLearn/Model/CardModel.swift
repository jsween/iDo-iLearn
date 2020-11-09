//
//  CardModel.swift
//  iDo iLearn
//
//  Created by Jonathan Sweeney on 11/8/20.
//

import SwiftUI

// MARK: - Card Model

struct Card: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var imageName: String
    var callToAction: String
    var message: String
    var gradientColrs: [Color]
}
