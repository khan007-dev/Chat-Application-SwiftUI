//
//  SettingsHeaderView.swift
//  SwiftUI Chat Application
//
//  Created by Khan on 01.02.2024.
//

import Foundation
import Kingfisher
import SwiftUI

struct SettingsHeader: View {
    
    private let user: User
    
    init(user: User) {
        self.user = user
    }
    var body: some View {
        VStack (spacing: 32){
            HStack {
                
                KFImage(URL(string: user.profileImageUrl))
                    .resizable()
                    .scaledToFit()
                    .frame(width: 64, height: 64)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .padding(.leading)
                
                VStack (alignment: .leading, spacing: 4) {
                    Text("Sarah Log".uppercased())
                        .font(.system(size: 18))
                        .bold()
                    Text("Available")
                        .foregroundStyle(.gray)
                        .font(.system(size: 14))
                }
                Spacer()
            }
            .frame(height: 80)
            .background(Color.white)
            
        }
    }
}
