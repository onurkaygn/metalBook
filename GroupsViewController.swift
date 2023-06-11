//
//  GroupsViewController.swift
//  metalBook
//
//  Created by Onuralp Kaygin on 11.06.2023.
//

import UIKit

class GroupsViewController: UIViewController {

    @IBOutlet weak var groupsTableView: UITableView!
    
    var allGroupsString = [MetalGroup]()
    
    let metallica = MetalGroup(id:0, name: "Metallica", members: "James Hetfield, Kirk Hammet, Lars Ulrich, Robert Trujillo", established: 1981,image:UIImage(named: "metallica")!,popularSong: "Enter Sandman")
    
    let rammstein = MetalGroup(id:1, name: "Rammstein", members: "", established: 1994, image: UIImage(named: "rammstein")!, popularSong:"Du Hast")
    
    override func viewDidLoad() {
        super.viewDidLoad()

        allGroupsString.append(metallica)
        allGroupsString.append(rammstein)
        
        groupsTableView.delegate = self
        groupsTableView.dataSource = self
    }
    
}
extension GroupsViewController:UITableViewDelegate,UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return allGroupsString.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell",for: indexPath)
        cell.textLabel?.text = allGroupsString[indexPath.row].name
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Clicked group is: \(allGroupsString[indexPath.row].name)")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC" {
            let destinationVC = segue.destination as! DetailsViewController
            
            if allGroupsString[0].id == 0{
                destinationVC.destinationGroupName = metallica.name
                destinationVC.destinationEstablishedLabel = metallica.established
                destinationVC.destinationMostPopularSongLabel = metallica.popularSong
                destinationVC.destinationGroupImage = metallica.image
                destinationVC.destinationMembersLabel = String(metallica.members)
            }
        }
    }
        
}

