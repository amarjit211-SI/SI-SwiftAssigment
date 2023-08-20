//
//  ViewControllerVM.swift
//  PropertyListDemo
//
//  Created by Instructor on 17/08/23.
//

import Foundation

class ViewControllerVM {
    //MARK: - Variables
    var text    : String    = ""
    var email : String = ""
    var phone: String = ""
    
    var event   : Date      = Date.now
    
    //MARK: - Functions
    func save() {
        DataModelController.shared.save(newInfo: Info(text: self.text,
                                                      email: self.email,
                                                      phone: self.phone,
                                                      eventDate: self.event))
    }
}
