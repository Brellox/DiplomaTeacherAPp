//
//  SignUpConfigurator.swift
//  DiplomaTeacherApp
//
//  Created by Иван Суслов on 23.03.2022.
//

import Foundation

class SignUpConfigurator: SignUpConfiguratorProtocol {
    
    func configure(with viewController: SignUpViewController) {
        let presenter = SignUpPresenter(view: viewController)
        let interactor = SignUpInteractor(presenter: presenter)
        let router = SignUpRouter(viewController: viewController)
        
        viewController.presenter = presenter
        presenter.interactor = interactor
        presenter.router = router
    }
}
