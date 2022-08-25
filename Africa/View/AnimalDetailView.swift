//
//  AnimalDetailView.swift
//  Africa
//
//  Created by alieu samb on 09/02/2022.
//

import SwiftUI

struct AnimalDetailView: View {
    //:propertie
    let animal : Animal
    var body: some View {
        ScrollView(.vertical,showsIndicators: false){
            VStack(alignment:.center,spacing: 20) {
               
                //: Head Image
                Image(animal.image)
                    .resizable()
                    .scaledToFill()
                //:Title
                Text(animal.name)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(.primary)
                    .padding(.vertical,8)
                    .multilineTextAlignment(.center)
                    .background(
                        Color.accentColor
                            .frame(height: 6)
                            .offset( y: 24)
                    )
                //:HeadLine
                Text(animal.headline)
                    .foregroundColor(.accentColor)
                    .font(.headline)
                    .multilineTextAlignment(.leading)
                    .padding(.horizontal)
                
                //:Gallery
                Group{
                    HeadingView(headingImage: "photo.on.rectangle.angled", headingText: "wilderness pictures")
                    InsetGalleryView(animal: animal)
                }
                .padding(.horizontal)
                //:Facts
                
                Group{
                    HeadingView(headingImage: "questionmark.circle", headingText: "Did you known?" )
                    InsetFactiview(animal: animal)
                }
                .padding(.horizontal)
                //:Description
                Group{
                    HeadingView(headingImage: "info.circle", headingText: "All about \(animal.name)")
                    Text(animal.description)
                        .multilineTextAlignment(.leading)
                        .layoutPriority(1)
                }
                .padding()
                //:Map
                Group{
                    HeadingView(headingImage: "map", headingText: "National Park")
                    InsetMapView()
                }
                .padding()
                //:Link
                Group{
                    HeadingView(headingImage: "books.vertical", headingText: "learn more")
                    ExternalWebLinkView(animal: animal)
                }
            }//:Vstack
            .navigationBarTitle("learn about \(animal.name)",displayMode: .inline)
        }
        
    }
}

struct AnimalDetailView_Previews: PreviewProvider {
    static let animals : [Animal] = Bundle.main.decode("animals.json")
    static var previews: some View {
        NavigationView{
            AnimalDetailView(animal: animals[0])
        }
        .preferredColorScheme(.dark)
            .previewDevice("iPhone 11 Pro")
            
    }
}
