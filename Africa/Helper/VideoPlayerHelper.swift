//
//  VideoPlayerHelper.swift
//  Africa
//
//  Created by Juan Sebastian Orozco Buitrago on 2/2/22.
//

import Foundation
import AVKit

var videoPlayer: AVPlayer?

func playVideo(fileName: String, fileFormat: String) -> AVPlayer {
    let AVplayer = Bundle.main.url(forResource: fileName, withExtension: fileFormat)
    
    if AVplayer != nil {
        videoPlayer = AVPlayer(url: AVplayer!)
        videoPlayer?.play()
    }
    return videoPlayer!
}
