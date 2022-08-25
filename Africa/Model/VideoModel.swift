//
//  VideoModel.swift
//  Africa
//
//  Created by alieu samb on 17/02/2022.
//

import Foundation

struct Video: Codable, Identifiable{
    let id : String
    let name: String
    let headline : String
    
    // compue property
    
    var thumbail : String{
        "video-\(id)"
    }
}
