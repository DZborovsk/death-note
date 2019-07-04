//
//  DeathTableViewCell.swift
//  ex00
//
//  Created by Danyil ZBOROVKYI on 6/27/19.
//  Copyright © 2019 Danyil ZBOROVKYI. All rights reserved.
//

import UIKit

class DeathTableViewCell: UITableViewCell {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var deathLabel: UILabel!
    
    
    
    func cellConfigurate(person: Person?) {
        if let person = person {
            nameLabel.text = person.name
            dateLabel.text = person.date
            deathLabel.text = person.death
        }
    }

}
