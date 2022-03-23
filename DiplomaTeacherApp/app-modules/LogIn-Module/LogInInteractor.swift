//
//  LogInInteractor.swift
//  DiplomaTeacherApp
//
//  Created by Иван Суслов on 22.03.2022.
//

import Foundation

class LogInInteractor: LogInInteractorProtocol {
    
    weak var presenter: LogInPresenterProtocol!
    
    required init(presenter: LogInPresenterProtocol) {
        self.presenter = presenter
    }
}
