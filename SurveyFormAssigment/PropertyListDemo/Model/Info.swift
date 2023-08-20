//
//  Info.swift
//  PropertyListDemo
//
//  Created by Instructor on 17/08/23.
//

import Foundation

struct Info {
    var text        : String    = ""
    var email     : String    = ""
    var phone : String = ""
    var eventDate   : Date      = Date.now
}

extension Info : Codable {
    
}

extension Info : CustomStringConvertible {
    var description: String {
        """
        Info
        -----
        TEXT:       \(self.text)
        EMAIL:    \(self.email)
        PHONE:    \(self.phone)
        DATE:       \(self.eventDate.description)
        """
    }
}
