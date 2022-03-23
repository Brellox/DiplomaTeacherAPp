//
//  SignUpRouter.swift
//  DiplomaTeacherApp
//
//  Created by Иван Суслов on 23.03.2022.
//

import Foundation

class SignUpRouter: SignUpRouterProtocol {
    
    weak var viewController: SignUpViewController!
    
    init(viewController: SignUpViewController) {
        self.viewController = viewController
    }
    
    
}
