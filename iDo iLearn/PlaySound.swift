//
//  PlaySounds.swift
//  iDo iLearn
//
//  Created by Jonathan Sweeney on 11/8/20.
//

import SwiftUI
import AVFoundation

// MARK: - Audio Player

var audioPlayer: AVAudioPlayer?

func playSound(sound: String, type: String) {
    if let path = Bundle.main.path(forResource: sound, ofType: type) {
        do{
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayer?.play()
        }
        catch {
            print("Unable to play sound.")
        }
    }
}

