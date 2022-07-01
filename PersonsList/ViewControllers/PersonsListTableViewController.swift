//
//  PersonsListTableViewController.swift
//  PersonsList
//
//  Created by Сергей Белоусов on 29.06.2022.
//

import UIKit

class PersonsListTableViewController: UITableViewController {
    
    var personList: [Person] = Person.getPerson()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dataTransfer()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

        cell.textLabel?.text = personList[indexPath.row].fullName

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let vc = storyboard?.instantiateViewController(withIdentifier: "PersonDetailViewController") as! PersonDetailViewController
        vc.phoneText = personList[indexPath.row].phone
        vc.emailText = personList[indexPath.row].email
        vc.fullName = personList[indexPath.row].fullName
        
        navigationController?.pushViewController(vc, animated: true)
    }

}

extension PersonsListTableViewController {
    private func dataTransfer() {
        let vc = self.tabBarController?.viewControllers![1] as! SecondTableViewController
        vc.personList = personList
    }
}
