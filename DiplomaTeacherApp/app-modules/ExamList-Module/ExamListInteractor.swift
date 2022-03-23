//
//  ExamListInteractor.swift
//  DiplomaTeacherApp
//
//  Created by Иван Суслов on 23.03.2022.
//

import Foundation

class ExamListInteractor: ExamListInteractorProtocol {
    
    weak var presenter: ExamListPresenterProtocol!
    
    required init(presenter: ExamListPresenterProtocol) {
        self.presenter = presenter
    }
}
