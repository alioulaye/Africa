//
//  CoverImageView.swift
//  Africa
//
//  Created by alieu samb on 08/02/2022.
//

import SwiftUI

struct CoverImageView: View {
    //:Properties
    let coverImage : [CoverImage] = Bundle.main.decode("covers.json")
    
    
    //:Body
    var body: some View {
        TabView{
            ForEach(coverImage) { item in
                Image(item.name)
                    .resizable()
                    .scaledToFill()
                    
            }//: end foreach
        }//: End TabView
        .tabViewStyle(PageTabViewStyle())
       
         
    }
}


//:Preview
struct CoverImageView_Previews: PreviewProvider {
    static var previews: some View {
        CoverImageView()
            .previewLayout(.fixed(width: 400, height: 300))
    }
}
