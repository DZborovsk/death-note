//
//  AddViewController.swift
//  ex00
//
//  Created by Danyil ZBOROVKYI on 6/27/19.
//  Copyright © 2019 Danyil ZBOROVKYI. All rights reserved.
//

import UIKit

protocol AddViewControllerDelegate: class {
    func addViewController(_ controller: AddViewController, didFinishAdding: Person)
}

class AddViewController: UIViewController {
    weak var delegate: AddViewControllerDelegate?
    weak var peopleList: PeopleList?
    
    @IBOutlet weak var datePick: UIDatePicker!
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var descriptionText: UITextView!
    
    @IBAction func doneButton(_ sender: UIBarButtonItem) {
        navigationController?.popViewController(animated: true)

        let format = DateFormatter()
        format.dateFormat = "dd MMMM yyyy HH:mm:ss"
        let date = format.string(from: datePick.date)
        
        
        if let name = nameField.text {
            if name != "" {
                if let newPerson = peopleList?.newPerson() {
                    if let death = descriptionText.text {
                        newPerson.date = date
                        newPerson.death = death
                        newPerson.name = name
                    } else {
                        newPerson.date = date
                        newPerson.name = name
                    }
                    delegate?.addViewController(self, didFinishAdding: newPerson)
                }
            }
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        datePick.minimumDate = Date()
    }


}
