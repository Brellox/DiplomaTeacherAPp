//
//  Exam.swift
//  DiplomaTeacherApp
//
//  Created by Иван Суслов on 23.03.2022.
//

import Foundation
struct Exam: Codable{
    let id: Int
    let examRule: ExamRule
    let teacher: Teacher
    let discipline: Discipline
    let groups: [Group]
    let startTime: String
    
    private enum CodingKeys: String, CodingKey{
        case id = "id"
        case examRule = "examRule"
        case teacher = "teacher"
        case discipline = "discipline"
        case groups = "groups"
        case startTime = "startTime"
    }
}

struct ExamRule: Codable{
    
    let id: Int
    let name: String
    let themes: [Theme]
    let discipline: Discipline
    let questionCount: Int
    let exerciseCount: Int
    let duration: Int
    let minimalRating: Int
    
    private enum CodingKeys: String, CodingKey{
        case id = "id"
        case name = "name"
        case themes = "themes"
        case discipline = "discipline"
        case questionCount = "questionCount"
        case exerciseCount = "exerciseCount"
        case duration = "duration"
        case minimalRating = "minimalRating"
    }
}

struct ExamPeriod: Codable{
    let id: Int
    let start: String
    let end: String
    let exam: Exam
    let state: String
    
    private enum CodingKeys: String, CodingKey{
        case id = "id"
        case start = "start"
        case end = "end"
        case exam = "exam"
        case state = "state"
    }
}


struct Theme: Codable{
    let id: Int
    let name: String
    let discipline: Discipline
    
    private enum CodingKeys: String, CodingKey{
        case id = "id"
        case name = "name"
        case discipline = "discipline"
    }
}

enum ExamState: String{
    case REDACTION = "REDACTION"
    case ALLOWANCE = "ALLOWANCE"
    case READY = "READY"
    case PROGRESS = "PROGRESS"
    case FINISHED = "FINISHED"
    case CLOSED = "CLOSED"
}
