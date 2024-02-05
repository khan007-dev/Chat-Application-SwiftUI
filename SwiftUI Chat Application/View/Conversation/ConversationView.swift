//
//  ConversationView.swift
//  SwiftUI Chat Application
//
//  Created by Khan on 01.02.2024.
//

import SwiftUI

struct ConversationView: View {
    var body: some View {
       
        ZStack (alignment: .bottomTrailing) {
            
            ScrollView {
                VStack (alignment: .leading) {
               
                    ForEach((0...10), id: \.self) { _ in
                    ConversationCell()
                            
                    }
                    
                }
            }
            
            Button(action: {
                
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
            
        }
    }
}

#Preview {
    ConversationView()
}
