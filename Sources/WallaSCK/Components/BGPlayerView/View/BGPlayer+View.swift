//
//  BGPlayer+View.swift
//  Clon de Wallapop
//
//  Created by Cane Allesta on 28/1/23.
//

import SwiftUI
import AVKit


enum BGPlayerSource {
    case local(filename: String, type: String),
         external(url: String)
}

struct BGPlayerView: View {
    let source: BGPlayerSource
        
    var body: some View {
        GeometryReader{ geo in
            PlayerView(source: source)
            .aspectRatio(contentMode: .fill)
            .frame(width: geo.size.width, height: geo.size.height+100)
            .edgesIgnoringSafeArea(.all)
            .overlay(Color.black.opacity(0.2))
            .blur(radius: 1)
            .edgesIgnoringSafeArea(.all)
        }
    }
}

struct PlayerView: UIViewRepresentable {

    // Private properties
    let source: BGPlayerSource
    
    func updateUIView(_ uiView: UIView, context: UIViewRepresentableContext<PlayerView>) {
    }
    
    func makeUIView(context: Context) -> UIView {
        return LoopingPlayerUIView(frame: .zero,
                                   source: source)
    }
    
    // Private properties
    class LoopingPlayerUIView: UIView {
        
        // Private properties
        private let playerLayer = AVPlayerLayer()
        private var playerLooper: AVPlayerLooper?
        
        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
        
        init(frame: CGRect,
            source: BGPlayerSource) {
            super.init(frame: frame)
            
            switch source {
                case .local(let filename, let type):
                    guard let fileUrl = createLocalUrl(for: filename, ofType: type) else {
                        return
                    }
                    setupPlayer(from: fileUrl)
                case .external(let url):
                    guard let fileUrl = URL(string: url) else {
                        return
                    }
                    setupPlayer(from: fileUrl)
            }
        }
        
        override func layoutSubviews() {
            super.layoutSubviews()
            playerLayer.frame = bounds
        }
        
        private func setupPlayer(from url: URL) {
            // Load the resource ->
            let asset = AVAsset(url: url)
            let item = AVPlayerItem(asset: asset)
            
            // Setup the player
            let player = AVQueuePlayer()
            playerLayer.player = player
            playerLayer.videoGravity = .resizeAspectFill
            layer.addSublayer(playerLayer)
            // Create a new player looper with the queue player and template item
            playerLooper = AVPlayerLooper(player: player, templateItem: item)
            // Start the movie
            player.play()
        }
        
        private func createLocalUrl(for filename: String,
                                    ofType: String) -> URL? {
            let fileManager = FileManager.default
            let cacheDirectory = fileManager.urls(for: .cachesDirectory, in: .userDomainMask)[0]
            let url = cacheDirectory.appendingPathComponent("\(filename).\(ofType)")
            
            guard fileManager.fileExists(atPath: url.path) else {
                guard let video = NSDataAsset(name: filename)  else { return nil }
                fileManager.createFile(atPath: url.path, contents: video.data, attributes: nil)
                return url
            }
            
            return url
        }
    }
}


