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
    
    var destinationGroupName = ""
    var destinationGroupImage = UIImage(named: "metallica")
    var destinationMembersLabel = ""
    var destinationMostPopularSongLabel = ""
    var destinationEstablishedLabel = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        groupNameLabel.text = destinationGroupName
        groupImage.image = destinationGroupImage
        membersLabel.text = destinationMembersLabel
        mostPopularSongLabel.text = destinationMostPopularSongLabel
        establishedLabel.text = "\(destinationEstablishedLabel)"
       
    }
    


}
