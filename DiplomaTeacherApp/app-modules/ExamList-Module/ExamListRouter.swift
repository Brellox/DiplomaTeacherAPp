//
//  ExamListRouter.swift
//  DiplomaTeacherApp
//
//  Created by Иван Суслов on 23.03.2022.
//

import Foundation
import UIKit

class ExamListRouter: ExamListRouterProtocol {
    
    weak var viewController: ExamListViewController!
    
    init(viewController: ExamListViewController) {
        self.viewController = viewController
    }
    
    func logInCheck(success: Bool){
        if !success
        {
            let LIVC = self.viewController.storyboard?.instantiateViewController(withIdentifier: "LogInViewController") as! LogInViewController
            let navVC = UINavigationController(rootViewController: LIVC)
            navVC.modalPresentationStyle = .overFullScreen
            DispatchQueue.main.async {
                self.viewController.present(navVC, animated: false, completion: nil)
            }
            
        }
    }
}
