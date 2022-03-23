//
//  Account.swift
//  DiplomaTeacherApp
//
//  Created by Иван Суслов on 23.03.2022.
//

import Foundation

struct Account: Codable{
    let id: Int
    let username: String
    let password: String
    let name: String
    let surname: String
    let roles: [String]
    
    private enum CodingKeys: String, CodingKey{
        case id = "id"
        case username = "username"
        case password = "password"
        case name = "name"
        case surname = "surname"
        case roles = "roles"
    }
}

enum Role: String{
    case ROLE_ADMIN = "ROLE_ADMIN"
    case ROLE_STUDENT = "ROLE_STUDENT"
    case ROLE_TEACHER = "ROLE_TEACHER"
}
