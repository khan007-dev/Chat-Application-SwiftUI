//
//  UserCell.swift
//  SwiftUI Chat Application
//
//  Created by Khan on 05.02.2024.
//

import SwiftUI
import Kingfisher
struct UserCell: View {
    let user: User
    var body: some View {
        VStack {
            HStack {
                // image
                KFImage(URL(string: user.profileImageUrl))
                Image(.profile1)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40, height: 40)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                // user Info
                
                VStack (alignment: .leading) {
                    Text(user.username)
                        .font(.system(size: 14, weight: .semibold))
                    
                    Text(user.fullnamee)
                        .font(.system(size: 15))
                }
                .foregroundStyle(.black)
                Spacer()
            }
            .padding(.horizontal)
          
        }.padding(.top)
    }
}


