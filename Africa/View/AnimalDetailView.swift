//
//  AnimalDetailView.swift
//  Africa
//
//  Created by Juan Sebastian Orozco Buitrago on 2/1/22.
//

import SwiftUI

struct AnimalDetailView: View {
    
    //MARK: - PROPERTIES
    
    let animal: Animal
    
    //MARK: - BODY
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 20) {
                
                // HERO IMAGE
                Image(animal.image)
                    .resizable()
                    .scaledToFit()
                
                // TITLE
                Text(animal.name.uppercased())
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(Color.primary)
                    .multilineTextAlignment(.center)
                    .background(
                        Color.accentColor
                            .frame(height: 6)
                            .offset(y: 24)
                    )
                    .padding(.vertical, 8)
                    
                
                // HEADLINE
                Text(animal.headline)
                    .font(.headline)
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.accentColor)
                    .padding(.horizontal)
                
                // GALLERY
                Group {
                    HeadingView(
                        headingImage: "photo.on.rectangle.angled",
                        headingText: "Wilderness in Pictures")
                    
                    InsetGalleryView(animal: animal)
                }
                .padding(.horizontal)
                
                // FACTS
                Group {
                    HeadingView(
                        headingImage: "questionmark.circle",
                        headingText: "Did you know")
                    
                    InsetfactView(animal: animal)
                }
                .padding(.horizontal)
                
                // DESCRIPTION
                Group {
                    HeadingView(
                        headingImage: "info.circle",
                        headingText: "All about \(animal.name)")
                    
                    Text(animal.description)
                        .multilineTextAlignment(.leading)
                        .layoutPriority(1)
                    
                } //: GROUP
                .padding(.horizontal)
                
                // MAP
                Group {
                    HeadingView(
                        headingImage: "map",
                        headingText: "National Parks")
                    
                    INsetMapView()
                }
                .padding(.horizontal)
                
                // LINK
                Group {
                    HeadingView(
                        headingImage: "books.vertical",
                        headingText: " Learn more")
                    
                    ExternalWeblinkView(animal: animal)
                }
                .padding(.horizontal)
                
            } //: VSTACK
            .navigationTitle("Learn about \(animal.name)")
            .navigationBarTitleDisplayMode(.inline)
        } //: SCROLL
    }
}

//MARK: - BODY

struct AnimalDetailView_Previews: PreviewProvider {
    
    static let animals: [Animal] =
        Bundle.main.decode("animals.json")
    
    static var previews: some View {
        
        NavigationView {
            AnimalDetailView(animal: animals[0])
        }
    }
}
