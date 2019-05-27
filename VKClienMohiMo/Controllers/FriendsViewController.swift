//
//  FriendsViewController.swift
//  VKClienMohiMo
//
//  Created by Михаил Мохнач on 19/05/2019.
//  Copyright © 2019 Михаил Мохнач. All rights reserved.
//

import UIKit

class FriendsViewController: UITableViewController {

    
    var friends : [UserModel] = [
    
    UserModel(name: "Tanya", photo: UIImage(named: "Tanyphoto.png")!),
    UserModel(name: "Ivan", photo: UIImage(named: "Ivan.png")!),
    UserModel(name: "Pavel", photo: UIImage(named: "Pavelphoto.png")!)
    
    ]

    
    override func viewDidLoad() {
        super.viewDidLoad()
}
    
    

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return friends.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: FriendCell.reuseidentifier, for: indexPath)
            as? FriendCell else { return UITableViewCell() }
        
        cell.friendNameLabel.text = friends[indexPath.row].name
        cell.avatarImageView.image = friends[indexPath.row].photo
        
        
        return cell
    }






    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */



    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            
            friends.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
 
    
}


