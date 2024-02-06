//
//  MessageView.swift
//  SwiftUI Chat Application
//
//  Created by Khan on 06.02.2024.
//

import SwiftUI

struct MessageView: View {
    var isFromCurrentUser: Bool
    var body: some View {
        HStack {
            
            if isFromCurrentUser {
                Spacer()
                Text("Some Test Message for now ..")
                    .padding(12)
                    .background(Color.blue)
                    .font(.system(size: 15))
                    .clipShape(ChatBubble(isFromCurrectUser: true))
                    .foregroundStyle(.white)
                    .padding(.leading, 80)
                    .padding(.horizontal)
            } else {
                HStack (alignment:.bottom) {
                    Image(.profile1)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 32, height: 32)
                        .clipShape(Circle())
                    
                    Text("Some Test Message for now ..")
                        .padding(12)
                        .background(Color(.systemGray5))
                        .font(.system(size: 15))
                        .clipShape(ChatBubble(isFromCurrectUser: false))
                        .foregroundStyle(.black)
                }
                .padding(.horizontal)
                .padding(.trailing, 80)
                Spacer()
            }
        }
    }
}

#Preview {
    MessageView(isFromCurrentUser: false)
}
