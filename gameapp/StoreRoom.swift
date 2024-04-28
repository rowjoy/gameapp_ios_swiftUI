//
//  StoreRoom.swift
//  gameapp
//
//  Created by Nec Money on 4/28/24.
//

import Foundation
import SwiftData

@Model
class StoreRoom : Identifiable {
    let id : String
    var userName : String
    var dateOfBirth : String
    var schoolName : String
    
    
    init(name : String, dob : String, sname : String) {
        let randomInt = Int.random(in: 1...1000)
        
        let data = sname.data(using: .utf8)
        let byte = [UInt8](data!)
        let byteString = byte.map{String(format: "%02x", $0)}.joined()
        self.id = "\(randomInt)" + "\(byteString)"
        self.userName = name
        self.dateOfBirth = dob
        self.schoolName = sname
        
    }
    
}
