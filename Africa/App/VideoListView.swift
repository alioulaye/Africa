//
//  VideoListView.swift
//  Africa
//
//  Created by alieu laye samb on 06/02/2022.
//

import SwiftUI

struct VideoListView: View {
   @State var videos : [Video] = Bundle.main.decode("videos.json")
    let hapticImpact = UIImpactFeedbackGenerator(style: .medium)
    
    var body: some View {
        NavigationView {
            List {
                
                ForEach(videos) { item in
                    VideoListItemView(video: item)
                        .padding(.vertical, 8)
                }//: end loop
            }//end list
            .listStyle(InsetGroupedListStyle())
            .navigationBarTitle("Video", displayMode: .large)
            .toolbar{
                ToolbarItem(placement:.navigationBarTrailing){
                    Button(action:{
                        videos.shuffle()
                        hapticImpact.impactOccurred()
                    }){
                        Image(systemName: "arrow.2.squarepath")
                    }
            }
        }//: end navigationview
    }
}
}

struct VideoListView_Previews: PreviewProvider {
    static var previews: some View {
        VideoListView()
    }
}
