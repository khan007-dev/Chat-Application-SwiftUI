//
//  User.swift
//  SwiftUI Chat Application
//
//  Created by Khan on 11.02.2024.
//

import Foundation
import FirebaseFirestoreSwift


struct User: Identifiable, Decodable {
    @DocumentID var id: String?
    let username: String
    let fullnamee: String
    let email: String
    let profileImageUrl: String

 
    
}
