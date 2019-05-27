//
//  GroupsViewController.swift
//  VKClienMohiMo
//
//  Created by Михаил Мохнач on 19/05/2019.
//  Copyright © 2019 Михаил Мохнач. All rights reserved.
//

import UIKit

class GroupsViewController: UITableViewController {

    var groups:  [GroupModel] = [
    
   GroupModel(name: "Juventus", photo: UIImage(named: "Juventus.png")!),
   GroupModel(name: "Esquire", photo: UIImage(named: "esquire-logo.png")!),
   GroupModel(name: "Phylosophy", photo: UIImage(named: "philosophylogo.png")!)
        
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

  
    }

    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return groups.count
    }

 

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: GroupCell.reuseidentifier, for: indexPath)
            as? GroupCell else { return UITableViewCell() }
        
        cell.groupNameLabel.text = groups[indexPath.row].name
        cell.avatargroupImageView.image = groups[indexPath.row].photo
        
        
        return cell
    }
    
    @IBAction func myUnwindAction1 (UnwindSegue: UIStoryboardSegue) {
        
    }

    
    @IBAction func addGroup(segue: UIStoryboardSegue) {
        if let controller = segue.source as? SearchGroupsViewController,
            let indexPath = controller.tableView.indexPathForSelectedRow {
            let group = controller.newgroups[indexPath.row]
            
            guard !groups.contains(where: { $0.name == group.name }) else { return }
            
            groups.append(group)
            let newIndexPath = IndexPath(item: groups.count - 1, section: 0)
            tableView.insertRows(at: [newIndexPath], with: .automatic)
        }
    }
    
    @IBAction func deleteGroup(segue: UIStoryboardSegue) {
       
            
            groups.removeLast()
        
        }
    }
    
    

