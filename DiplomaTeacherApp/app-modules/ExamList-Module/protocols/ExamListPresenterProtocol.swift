//
//  ExamListPresenterProtocol.swift
//  DiplomaTeacherApp
//
//  Created by Иван Суслов on 23.03.2022.
//

import Foundation
protocol ExamListPresenterProtocol:AnyObject {
    var router: ExamListRouterProtocol! {set get}
    func configureView()
    func logInCheck(success: Bool)
}
