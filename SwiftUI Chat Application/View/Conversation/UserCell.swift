//
//  UserCell.swift
//  SwiftUI Chat Application
//
//  Created by Khan on 05.02.2024.
//

import SwiftUI

struct UserCell: View {
    var body: some View {
        VStack {
            HStack {
                // image
                Image(.profile1)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40, height: 40)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                // user Info
                
                VStack (alignment: .leading) {
                    Text("Sarah log".uppercased())
                        .font(.system(size: 14, weight: .semibold))
                    
                    Text("@log")
                        .font(.system(size: 15))
                }
                Spacer()
            }
            .padding(.horizontal)
          
        }.padding(.top)
    }
}

#Preview {
    UserCell()
}
