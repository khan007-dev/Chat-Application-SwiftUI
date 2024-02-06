//
//  ChatsView.swift
//  SwiftUI Chat Application
//
//  Created by Khan on 01.02.2024.
//

import SwiftUI

struct ChatsView: View {
    @State  private var messgeText = ""
    var body: some View {
        VStack {
            ScrollView {
                VStack (alignment: .leading, spacing: 12) {
                    ForEach((0...10), id:\.self) { _ in
                    MessageView(isFromCurrentUser: true)
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
        print("Send message \(messgeText)")
    }
}

#Preview {
    ChatsView()
}
