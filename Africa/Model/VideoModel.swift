//
//  VideoModel.swift
//  Africa
//
//  Created by Juan Sebastian Orozco Buitrago on 2/1/22.
//

import Foundation

struct Video: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    
    // Computed Property
    
    var thumbnail: String {
        "video-\(id)"
    }
}
