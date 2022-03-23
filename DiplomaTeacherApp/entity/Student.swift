//
//  Student.swift
//  DiplomaTeacherApp
//
//  Created by Иван Суслов on 23.03.2022.
//

import Foundation

struct Student: Codable{
    let id: Int
    let account: Account
    let group: Group
    
    private enum CodingKeys: String, CodingKey{
        case id = "id"
        case account = "account"
        case group = "group"
    }
}

struct Group: Codable{
    let id: Int
    let name: String
    
    private enum CodingKeys: String, CodingKey{
        case id = "id"
        case name = "name"
    }
}
