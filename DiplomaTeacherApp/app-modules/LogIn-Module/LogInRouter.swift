//
//  LogInRouter.swift
//  DiplomaTeacherApp
//
//  Created by Иван Суслов on 22.03.2022.
//

import Foundation

class LogInRouter: LogInRouterProtocol {
    
    weak var viewController: LogInViewController!
    
    init(viewController: LogInViewController) {
        self.viewController = viewController
    }
    
    func goToSignUp(){
        let SUVC = self.viewController.storyboard?.instantiateViewController(withIdentifier: "SignUpViewController") as! SignUpViewController
        self.viewController.navigationController?.pushViewController(SUVC, animated: true)
    }
    
}
