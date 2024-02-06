//
//  UserCell.swift
//  SwiftUI Chat Application
//
//  Created by Khan on 05.02.2024.
//

import SwiftUI

struct ConversationCell: View {
    var body: some View {
        VStack {
            HStack {
                // image
                Image(.profile1)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 48, height: 48)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                // user Info
                
                VStack (alignment: .leading) {
                    Text("Sarah log".uppercased())
                        .font(.system(size: 14, weight: .semibold))
                    
                    Text("This is some test message for now")
                        .font(.system(size: 15))
                }
                .foregroundStyle(.black)
                Spacer()
            }
            .padding(.horizontal)
            Divider()
        }.padding(.top)
    }
}

#Preview {
    ConversationCell()
}
