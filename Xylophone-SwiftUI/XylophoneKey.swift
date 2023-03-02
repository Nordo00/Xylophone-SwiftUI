//
//  XylophoneKey.swift
//  Xylophone-SwiftUI
//
//  Created by Oliver Lin on 3/2/23.
//  Copyright © 2023 Nordo. All rights reserved.
//

import SwiftUI
import AVFoundation

struct XylophoneKey: View {

    let musicNote: String?
    let keyColor: Color?
    let keyWidthSubtraction: CGFloat?
    
    @State var player: AVAudioPlayer!

    
    var body: some View {
        Button {
            let url = Bundle.main.url(forResource: musicNote, withExtension: "wav")
            player = try! AVAudioPlayer(contentsOf: url!)
            player.play()
        } label: {
            Text(musicNote!)
                .font(.largeTitle)
                .foregroundColor(.white)
                .frame(maxWidth: (UIScreen.main.bounds.width-keyWidthSubtraction!),
                       maxHeight: .infinity).background(RoundedRectangle(cornerRadius: 15).fill(keyColor!))
        }
    }
}

struct XylophoneKey_Previews: PreviewProvider {
    static var previews: some View {
        XylophoneKey(musicNote: "C", keyColor: .red, keyWidthSubtraction: 5)
    }
}
