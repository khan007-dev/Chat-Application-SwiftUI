//
//  ConversationView.swift
//  SwiftUI Chat Application
//
//  Created by Khan on 01.02.2024.
//

import SwiftUI

struct ConversationView: View {
    @State private var shownewMessageView = false
    @State private var showChatView = false
    
    @State var selectedUser: User?
    var body: some View {
       
        ZStack (alignment: .bottomTrailing) {
          
            if let user = selectedUser {
                
                NavigationLink(destination: ChatsView(user: user), isActive: $showChatView, label: {
                    
                })
            }

            
            ScrollView {
                VStack (alignment: .leading) {
               
                    ForEach((0...10), id: \.self) { _ in
                        NavigationLink(destination: ChatsView(user: MOCK_USER)) {
                            ConversationCell()
                        }
                            
                    }
                    
                }
            }
            
            Button(action: {
                shownewMessageView.toggle()
            }, label: {
                Image(systemName: "square.and.pencil")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 24, height: 24)
                    .padding()
            })
            .background(Color(.systemBlue))
            .foregroundStyle(.white)
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            .padding()
            .sheet(isPresented: $shownewMessageView, content: {
                NewMessageView(showChatView: $showChatView, user: $selectedUser)
            })
        }
    }
}

#Preview {
    ConversationView()
}
