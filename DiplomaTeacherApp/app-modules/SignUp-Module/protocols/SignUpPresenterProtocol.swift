//
//  SignUpPresenterProtocol.swift
//  DiplomaTeacherApp
//
//  Created by Иван Суслов on 23.03.2022.
//

import Foundation
protocol SignUpPresenterProtocol:AnyObject {
    var router: SignUpRouterProtocol! {set get}
    func configureView()
}
