//
//  ExamListPresenter.swift
//  DiplomaTeacherApp
//
//  Created by Иван Суслов on 23.03.2022.
//

import Foundation
class ExamListPresenter: ExamListPresenterProtocol {
    
    weak var view: ExamListViewProtocol!
    var interactor: ExamListInteractorProtocol!
    var router: ExamListRouterProtocol!
    
    required init(view: ExamListViewProtocol){
        self.view = view
    }
    
    func configureView() {
        
    }
    func logInCheck(success: Bool)
    {
        self.router.logInCheck(success: success)
    }
    
}
