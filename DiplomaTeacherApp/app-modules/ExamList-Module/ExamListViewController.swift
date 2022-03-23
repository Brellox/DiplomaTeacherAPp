//
//  ExamListViewController.swift
//  DiplomaTeacherApp
//
//  Created by Иван Суслов on 23.03.2022.
//

import Foundation
import UIKit

class ExamListViewController: UIViewController, ExamListViewProtocol {
    
    var presenter: ExamListPresenterProtocol!
    let configurator: ExamListConfiguratorProtocol = ExamListConfigurator()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configurator.configure(with: self)
        presenter.configureView()
        self.setNavigation()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        if MainData.shared.storegeManager.access_token == nil{
            self.presenter.logInCheck(success: false)
        }
    }
    
    private func setNavigation(){
        self.title = "Экзамены"
        
    }
  
}
