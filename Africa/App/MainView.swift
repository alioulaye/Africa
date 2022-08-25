//
//  MainView.swift
//  Africa
//
//  Created by alieu samb on 06/02/2022.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView{
            ContentView()
                .tabItem{
                    Image(systemName: "square.grid.2x2")
                        Text("browser")
                }
                    
            VideoListView()
                .tabItem{
                    Image(systemName: "play.rectangle")
                        Text("watch")
                }
            
            MapVideo()
                .tabItem{
                    Image(systemName: "map")
                        Text("location")
                }
            
            GalleryView()
                .tabItem{
                    Image(systemName: "photo")
                    Text("gallery")
                }
        }
    }
}
    

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
            .preferredColorScheme(.light)
    }
}
