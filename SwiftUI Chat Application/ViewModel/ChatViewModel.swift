//
//  ChatViewModel.swift
//  SwiftUI Chat Application
//
//  Created by Khan on 07.02.2024.
//

import Foundation
class ChatViewModel: ObservableObject {
    
    @Published var messages = [Message]()
    
    init() {
        messages = mockMessage
    }
    var mockMessage: [Message] {
        [
            .init(isFromCurrentUser: true, messageText: "Hey What's up man"),
            .init(isFromCurrentUser: false, messageText: "Hey Good"),
            .init(isFromCurrentUser: true, messageText: "And You?"),
            .init(isFromCurrentUser: false, messageText: "That is great"),
            .init(isFromCurrentUser: true, messageText: "I am fine too")
        ]
    }
    
    func sendMessage(_ messageText: String) {
        let message = Message(isFromCurrentUser: true, messageText: messageText)
        messages.append(message)
        
    }
}
