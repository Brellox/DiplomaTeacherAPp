//
//  SignUpInteractor.swift
//  DiplomaTeacherApp
//
//  Created by Иван Суслов on 23.03.2022.
//

import Foundation

class SignUpInteractor: SignUpInteractorProtocol {
    
    weak var presenter: SignUpPresenterProtocol!
    
    required init(presenter: SignUpPresenterProtocol) {
        self.presenter = presenter
    }
}
