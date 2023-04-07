//  */
//
//  Project: Looping videos
//  File: LoopingPlayer.swift
//  Created by: Elaidzha Shchukin
//  Date: on 04.04.2023.
//
//  Status: Decoreted
//
//  /*

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
    private var playerLayer = AVPlayerLayer()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        //Load Video
        let fileUrl = Bundle.main.url(forResource: "VidoeWithBlock", withExtension: "move")
        let playerItem = AVPlayerItem(url: fileUrl)
        
        //Setup Player
        let player = AVPlayer(playerItem: playerItem)
        playerLayer.player = player
        playerLayer.vidoeGravity = .resizeAspectFill
        layer.addSublayer(playerLayer)
        
        //Loop
        player.actionAtItemEnd = .none
        NotificationCenter.default.addObserver(self, selector: #selector(rewindVideo(notification: )), name: .AVPlayerItemDidPlayToEndTime, object: player.currentTime())
        
        //Play
        player.play()
    }
    
    @objc
    func rewindVideo(notification: Notification) {
        playerLayer.player?.seek(to: .zero)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        playerLayer.frame = bounds
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

struct LoopingPlayer_Previews: PreviewProvider {
    static var previews: some View {
        LoopingPlayer()
    }
}
