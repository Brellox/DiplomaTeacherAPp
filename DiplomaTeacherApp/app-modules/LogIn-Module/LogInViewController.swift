//
//  LogInViewController.swift
//  DiplomaTeacherApp
//
//  Created by Иван Суслов on 22.03.2022.
//

import UIKit

class LogInViewController: UIViewController, LogInViewProtocol {
    
    var presenter: LogInPresenterProtocol!
    let configurator: LogInConfiguratorProtocol = LogInConfigurator()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configurator.configure(with: self)
        presenter.configureView()
        self.setNavigation()
    }
    
    
    
    private func setNavigation(){
        self.title = "Авторизация"
        
    }
    @IBAction func goToSignUp(_ sender: Any) {
        self.presenter.goToSignUp()
    }
    
}

