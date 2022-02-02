//
//  InsetfactView.swift
//  Africa
//
//  Created by Juan Sebastian Orozco Buitrago on 2/1/22.
//

import SwiftUI

struct InsetfactView: View {
    
    //MARK: - PROPERTIES
    
    let animal: Animal
    
    //MARK: - BODY
    
    var body: some View {
        GroupBox {
            TabView {
                ForEach(animal.fact, id:\.self) { item in
                    Text(item)
                }
            } //: TABS
            .tabViewStyle(PageTabViewStyle())
            .frame(minHeight: 148, idealHeight: 168, maxHeight: 180)
        } //: BOX
    }
}

//MARK: - PREVIEW

struct InsetfactView_Previews: PreviewProvider {
    
    static var animals: [Animal] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        InsetfactView(animal: animals[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
