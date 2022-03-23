//
//  SignUpViewController.swift
//  DiplomaTeacherApp
//
//  Created by Иван Суслов on 23.03.2022.
//

import Foundation
import UIKit

class SignUpViewController: UIViewController, SignUpViewProtocol {
    
    var presenter: SignUpPresenterProtocol!
    let configurator: SignUpConfiguratorProtocol = SignUpConfigurator()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configurator.configure(with: self)
        presenter.configureView()
        self.setNavigation()
    }
    
    private func setNavigation(){
        self.title = "Регистрация"
        
    }
  
}

