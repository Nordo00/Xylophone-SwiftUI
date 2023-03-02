//
//  XylophoneKeys.swift
//  Xylophone-SwiftUI
//
//  Created by Nordo on 3/2/23.
//

import SwiftUI
import AVFoundation

struct Xylophone: View {
    var body: some View {
        VStack {
            XylophoneKey(musicNote: "C", keyColor: .red, keyWidthSubtraction: 5)
            XylophoneKey(musicNote: "D", keyColor: .orange, keyWidthSubtraction: 15)
            XylophoneKey(musicNote: "E", keyColor: .yellow, keyWidthSubtraction: 25)
            XylophoneKey(musicNote: "F", keyColor: .green, keyWidthSubtraction: 35)
            XylophoneKey(musicNote: "G", keyColor: .indigo, keyWidthSubtraction: 45)
            XylophoneKey(musicNote: "A", keyColor: .blue, keyWidthSubtraction: 55)
            XylophoneKey(musicNote: "B", keyColor: .purple, keyWidthSubtraction: 65)
        }
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Xylophone()
    }
}
