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
            
            
            guard let user = result?.user else {return}
            
            let data: [String: Any] = [ "email": email, "username": username, "fullnamee": fullname]
            
            Firestore.firestore().collection("users").document(user.uid)
                .setData(data) { _ in
                
                    print("DEBUG: Successfully updated user info")
                }
            
        }
    }
    
    func uploadProfileImage() {
        
    }
    
    func signOut(){
        
    }
}
