//
//  LoopingPlayer.swift
//  Looping videos
//
//  Created by Elaidzha Shchukin on 04.04.2023.
//

import SwiftUI
import AVFoundation

struct LoopingPlayer: UIViewRepresentable {
    func makeUIView(context: Context) -> some UIView {
        return PlayerUIView(frame: .zero)
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        //Noting is here
    }
}

class PlayerUIView: UIView {
    private var playerLayer = AVPlayerLayer
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    //Load Video
    let fileUrl = Bundle.main.url(forResource: "VidoeWithBlock", withExtension: "move")
    let playerItem = AVPlayerItem(url: fileUrl)
    
    //Setup Player
    let player = AVPlayerLayer(playerItem: playerItem)
    
    //Play
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

struct LoopingPlayer_Previews: PreviewProvider {
    static var previews: some View {
        LoopingPlayer()
    }
}
