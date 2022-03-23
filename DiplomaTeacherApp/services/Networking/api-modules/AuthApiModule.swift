//
//  AuthAPIModule.swift
//  DiplomaTeacherApp
//
//  Created by Иван Суслов on 23.03.2022.
//

import Foundation

class AuthApiModule: APIClientBase, RequestManagerDelegate{
    
    private weak var delegate: AuthApiDelegate?
    private let requestManager: RequestManager
    
    init( _delegate: AuthApiDelegate) {
        requestManager = RequestManager.init()
        super.init()
        self.delegate = _delegate
        requestManager.delegate = self
        self.setDecoderBase64()
    }
    
    
    func loginByUserName(email: String, password: String){
        requestManager.post(method: "/auth/login", postData: ["email": email, "password": password]) { _data in
            do {
                if let json = try JSONSerialization.jsonObject(with: _data) as? [String : Any]{
                    if let token = json["access_token"] as? String{
                        StorageManager.shared.access_token = token
                        self.delegate?.loginResult(success: true, error_message: nil)
                    }else{
                        self.delegate?.loginResult(success: false, error_message: responseMessage.invalideLogin)
                    }
                }
            } catch{
                self.delegate?.loginResult(success: false, error_message: responseMessage.invalideLogin)
            }
        }
    }
    
    func registration(password: String, email: String, code: String){
        let registration_data = [
            "password": password,
            "email": email,
            "code": code
        ]
        requestManager.post(method: "/auth/registration", postData: registration_data) { _data in
            do{
                if let json = try JSONSerialization.jsonObject(with: _data) as? [String : Any]{
                    if let token = json["token"] as? String{
                        StorageManager.shared.access_token = token
                        self.delegate?.loginResult(success: true, error_message: nil)
                    }
                    self.delegate?.regustrationResult(success: json["success"] as! Bool, error_message: json["message"] as? String)
                }
            }catch{
                self.delegate?.regustrationResult(success: false, error_message: nil)
            }
        }
    }
    
    func error_back(message: String) {
        
    }
    
    func result_data(data: Data) {
        
    }
    
}
