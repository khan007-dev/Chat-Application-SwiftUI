//
//  AuthViewModel.swift
//  SwiftUI Chat Application
//
//  Created by Khan on 07.02.2024.
//

import Foundation
import Firebase
class AuthViewModel: NSObject, ObservableObject {
    
    func login(){
        print("login from view model")
    }
    
    func register(withEmail email: String, password: String, fullname: String, username: String) {
       
        Auth.auth().createUser(withEmail: email, password: password) {result, error in
            
            if let error = error  {
                print("Failed to register with error \(error.localizedDescription)")
                return
            }
            
            print("Successfull register user with firebase")
        }
    }
    
    func uploadProfileImage() {
        
    }
    
    func signOut(){
        
    }
}
