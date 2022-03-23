//
//  SignUpPresenter.swift
//  DiplomaTeacherApp
//
//  Created by Иван Суслов on 23.03.2022.
//

import Foundation
class SignUpPresenter: SignUpPresenterProtocol {
    
    weak var view: SignUpViewProtocol!
    var interactor: SignUpInteractorProtocol!
    var router: SignUpRouterProtocol!
    
    required init(view: SignUpViewProtocol){
        self.view = view
    }
    
    func configureView() {
        
    }
    
}
