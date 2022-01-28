//
//  AnimalModel.swift
//  Africa
//
//  Created by Juan Sebastian Orozco Buitrago on 1/28/22.
//

import SwiftUI

struct Animal: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    let description: String
    let link: String
    let image: String
    let gallery: [String]
    let fact: [String]
}
