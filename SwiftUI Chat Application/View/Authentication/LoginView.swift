//
//  LoginView.swift
//  SwiftUI Chat Application
//
//  Created by Khan on 29.01.2024.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        
        NavigationView {
            
            VStack (alignment: .leading) {
                
                HStack { Spacer() }
                Text("Hello.")
                    .font(.largeTitle)
                    .bold()
                
                
                Text("Welcome Back.")
                    .font(.largeTitle)
                    .bold()
                    .foregroundStyle(.blue)
                
                Spacer()
            }
            .padding(.leading)
            
        }.padding(.top, -56)
    }
}

#Preview {
    LoginView()
}
