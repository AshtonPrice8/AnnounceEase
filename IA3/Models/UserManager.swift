//
//  UserManager.swift
//  IA3
//
//  Created by Ashton Price on 17/5/2023.
//

import Foundation
import FirebaseFirestore
import FirebaseFirestoreSwift

struct DBUser:Codable {
    let userID:String
    let email:String?
    let dateCreated:Date?
    var isStaff:Bool?
    
    init(auth:AuthDataResultModel){
        self.userID = auth.uid
        self.email = auth.email
        self.dateCreated = Date()
        self.isStaff = false
    }
    
    init(
        userID:String,
        email:String? = nil,
        dateCreated:Date? = nil,
        isStaff:Bool? = nil
    ){
        self.userID = userID
        self.email = email
        self.dateCreated = dateCreated
        self.isStaff = isStaff
    }
    
    mutating func toggleStaffStatus(){
        let currentValue = isStaff ?? false
        isStaff = !currentValue
    }
    
}
