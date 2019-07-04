//
//  ViewController.swift
//  ex00
//
//  Created by Danyil ZBOROVKYI on 6/27/19.
//  Copyright © 2019 Danyil ZBOROVKYI. All rights reserved.
//

import UIKit

class DeathViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var peopleList = PeopleList()
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return peopleList.people.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tableItem") as! DeathTableViewCell
        
        cell.cellConfigurate(person: peopleList.people[indexPath.row])
        cell.dateLabel.sizeToFit()
        
        //Cell height auto
        tableView.rowHeight = UITableViewAutomaticDimension
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let addViewController = segue.destination as? AddViewController {
            addViewController.delegate = self
            addViewController.peopleList = peopleList
        }
    }
}

extension DeathViewController: AddViewControllerDelegate {
    func addViewController(_ controller: AddViewController, didFinishAdding: Person) {
        navigationController?.popViewController(animated: true)
        let newRowIndex = peopleList.people.count - 1
        let indexPath = IndexPath(row: newRowIndex, section: 0)
        let indexPaths = [indexPath]
        
        tableView.insertRows(at: indexPaths, with: .automatic)
    }
    
    
}

