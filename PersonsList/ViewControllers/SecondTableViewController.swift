//
//  SecondTableViewController.swift
//  PersonsList
//
//  Created by Сергей Белоусов on 30.06.2022.
//

import UIKit

class SecondTableViewController: UITableViewController {
    
    var personList: [Person] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(personList)
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return personList.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return personList[section].fullName
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        if indexPath.row == 0 {
            cell.textLabel?.text = personList[indexPath.row].phone
        } else {
            cell.textLabel?.text = personList[indexPath.row].email
        }
        
        return cell
        }
}
