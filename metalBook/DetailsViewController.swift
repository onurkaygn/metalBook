//
//  DetailsViewController.swift
//  metalBook
//
//  Created by Onuralp Kaygin on 11.06.2023.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet weak var groupNameLabel: UILabel!
    
    @IBOutlet weak var groupImage: UIImageView!
    
    @IBOutlet weak var membersLabel: UILabel!
    
    @IBOutlet weak var mostPopularSongLabel: UILabel!
    
    
    @IBOutlet weak var establishedLabel: UILabel!
    
    var metalGroup: MetalGroup?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        groupNameLabel.text = metalGroup?.name ?? ""
        groupImage.image = metalGroup?.image
        membersLabel.text = "Members: \(metalGroup?.members ?? "")"
        mostPopularSongLabel.text = "Most Popualar Song: \(metalGroup?.popularSong ?? "")"
        establishedLabel.text = "Established Date: \(metalGroup?.established ?? "")"
    }
}
