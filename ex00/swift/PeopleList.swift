//
//  PeopleList.swift
//  ex00
//
//  Created by Danyil ZBOROVKYI on 6/27/19.
//  Copyright © 2019 Danyil ZBOROVKYI. All rights reserved.
//

import Foundation

class PeopleList {
    var people: [Person] = []
    
    init() {
        let row0Item = Person()
        let row1Item = Person()
        let row2Item = Person()
        
        row0Item.name = "Harley Queen"
        row1Item.name = "Fransis"
        row2Item.name = "Flash Gordon"
        
        row0Item.death = "By Batman"
        row1Item.death = "Deathly cat"
        row2Item.death = "Not enought sleep"
        
        row0Item.date = "15 October 2018 23:11:15"
        row1Item.date = "15 October 2018 23:11:15"
        row2Item.date = "15 October 2018 23:11:15"
        
        
        people.append(row0Item)
        people.append(row1Item)
        people.append(row2Item)
    }
    
    func newPerson() -> Person {
        let new = Person()
        
        new.date = ""
        new.death = ""
        new.name = ""
        people.append(new)
        return new
    }
    
}
