//
//  MetalGroup.swift
//  metalBook
//
//  Created by Onuralp Kaygin on 11.06.2023.
//

import Foundation
import UIKit

class MetalGroup {
    let id: Int
    let name: String
    let members: String
    let established: String!
    let image: UIImage
    let popularSong: String


    
    init(id: Int, name: String, members:String, established: String,image: UIImage,popularSong: String) {
        self.id = id
        self.name = name
        self.members = members
        self.established = established
        self.image = image
        self.popularSong = popularSong
    }
}
