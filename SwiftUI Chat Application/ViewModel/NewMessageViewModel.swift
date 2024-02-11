//
//  NewViewModel.swift
//  SwiftUI Chat Application
//
//  Created by Khan on 11.02.2024.
//

import Foundation

class NewMessageViewModel: ObservableObject {
    @Published var users = [User]()
    
    init() {
        fetchUser()
    }
    
    func fetchUser() {
        COLLECTION_USERS.getDocuments { snapshot, _ in
            
            guard let documents = snapshot?.documents else { return}
            self.users = documents.compactMap({ try? $0.data(as: User.self)
            })
            
            print(" \(self.users)")
        }
    }
}
