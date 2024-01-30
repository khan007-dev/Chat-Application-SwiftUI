//
//  LoginView.swift
//  SwiftUI Chat Application
//
//  Created by Khan on 29.01.2024.
//

import SwiftUI

struct LoginView: View {
    
    @State private var email = ""
    @State private var password = ""
    var body: some View {
        
        NavigationView {
            
            VStack (alignment: .leading, spacing: 12) {
                
                HStack { Spacer() }
                Text("Hello.")
                    .font(.largeTitle)
                    .bold()
                
                
                Text("Welcome Back.")
                    .font(.largeTitle)
                    .bold()
                    .foregroundStyle(.blue)
                  
                
                VStack (spacing: 20) {
                    
                    CustomTextField(imageName: "envelope", placeHolder: "Email", isSecureField: false, text: $email)
                   
                    CustomTextField(imageName: "lock", placeHolder: "password", isSecureField: true, text: $password)
                    
                    
                 
                    
                }.padding([.top, .horizontal], 32)
                
              
                HStack {
                    Spacer()
                    
                    NavigationLink {
                        Text("Reset Password")
                    } label: {
                        Text("Forgot Password?")
                            .font(.subheadline)
                            .bold()
                            .foregroundStyle(.blue)
                            .padding(.top)
                            .padding(.trailing,12)
                    }

               
                }
                
                Button {
                    
                } label: {
                    Text("Sign In")
                        .font(.headline)
                        .foregroundStyle(.white)
                        .frame(width: 340, height: 50)
                        .background(Color.blue)
                        .clipShape(Rectangle())
                        .cornerRadius(12)
                        .padding()
                }
                .shadow(color: .gray, radius: 10)
                
                Spacer()
                
                NavigationLink {
                    RegisterionView()
                        .navigationBarBackButtonHidden(true)
                } label: {
                    HStack {
                        Spacer()
                        Text("Don't have an Account?")
                        Text("Sign Up")
                            .bold()
                        Spacer()
                    }
                }

            }
            .padding(.leading)
            
        }.padding(.top, -56)
    }
}

#Preview {
    LoginView()
}
