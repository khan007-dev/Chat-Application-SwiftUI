//
//  UserCell.swift
//  SwiftUI Chat Application
//
//  Created by Khan on 05.02.2024.
//

import SwiftUI

struct ConversationCell: View {
    var body: some View {
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
                
                
            }
        }
    }
}

#Preview {
    UserCell()
}
