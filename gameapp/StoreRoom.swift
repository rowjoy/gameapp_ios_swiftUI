//
//  StoreRoom.swift
//  gameapp
//
//  Created by Nec Money on 4/28/24.
//

import SwiftData

@Model
class StoreRoom: Identifiable {
    let id : String
    var userName : String
    var dateOfBirth : String
    var schoolName : String
    
    
    init(name : String, dob : String, sname : String) {
        let randomInt = Int.random(in: 1...1000)
        self.id = "\(randomInt)"
        self.userName = name
        self.dateOfBirth = dob
        self.schoolName = sname
        
    }
    
}
