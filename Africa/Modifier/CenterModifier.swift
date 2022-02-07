//
//  CenterModifier.swift
//  Africa
//
//  Created by Juan Sebastian Orozco Buitrago on 2/6/22.
//

import SwiftUI

struct CenterModifier: ViewModifier {
    func body(content: Content) -> some View {
        HStack {
            Spacer()
            content
            Spacer()
        }
    }
}
