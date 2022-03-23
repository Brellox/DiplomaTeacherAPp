//
//  Ticket.swift
//  DiplomaTeacherApp
//
//  Created by Иван Суслов on 23.03.2022.
//

import Foundation

struct Ticket: Codable{
    let id: Int
    let semesterRating: Int
    let examRating: Int
    let allowed: Bool
    let examPeriod: ExamPeriod
    let student: Student
    
    private enum CodingKeys: String, CodingKey{
        case id = "id"
        case semesterRating = "semesterRating"
        case examRating = "examRating"
        case allowed = "allowed"
        case examPeriod = "examPeriod"
        case student = "student"
    }
}
