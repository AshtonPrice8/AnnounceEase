//
//  LoginData.swift
//  IA3
//
//  Created by Ashton Price on 12/5/2023.
//

import Foundation

struct logInInformation:Identifiable {
    var id = UUID()
    var username:String
    var password:String
}

struct informationList {
    var list:[logInInformation] = [
        logInInformation(username: "teacher", password: "teacher"),
        logInInformation(username: "student", password: "student")
    ]
}

