//
//  ChatsView.swift
//  SwiftUI Chat Application
//
//  Created by Khan on 01.02.2024.
//

import SwiftUI

struct ChatsView: View {
    @State   var messgeText = ""
    @ObservedObject var viewModel = ChatViewModel()
    var body: some View {
        VStack {
            ScrollView {
                VStack (alignment: .leading, spacing: 12) {
                    ForEach(viewModel.messages) { message in
                        MessageView(isFromCurrentUser: message.isFromCurrentUser, messageText: message.messageText)
                    }
                    
                }
            }
            CustomInputView(text: $messgeText, action: sendMessage)
        }
        .navigationTitle("sarah")
        .navigationBarTitleDisplayMode(.inline)
        .padding(.vertical)
    }
    
    func sendMessage() {
        viewModel.sendMessage(messgeText)
        messgeText = ""
    }
}

#Preview {
    ChatsView()
}
