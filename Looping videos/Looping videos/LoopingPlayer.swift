//
//  LoopingPlayer.swift
//  Looping videos
//
//  Created by Elaidzha Shchukin on 04.04.2023.
//

import SwiftUI

struct LoopingPlayer: UIViewRepresentable {
    func makeUIView(context: Context) -> some UIView {
        return PlayerUIView(frame: .zero)
    }
}

class PlayerUIView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required 
}

struct LoopingPlayer_Previews: PreviewProvider {
    static var previews: some View {
        LoopingPlayer()
    }
}
