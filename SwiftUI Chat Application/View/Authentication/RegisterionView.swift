//
//  RegisterionView.swift
//  SwiftUI Chat Application
//
//  Created by Khan on 29.01.2024.
//

import SwiftUI

struct RegisterionView: View {
    
    @State private var email = ""
    @State private var password = ""
    @State private var fullname = ""
    @State private var username = ""
    @Environment(\.presentationMode) var mode
    var body: some View {
        
        VStack {
            
            VStack (alignment: .leading, spacing: 12) {
                
                HStack { Spacer() }
                Text("Get Started..")
                    .font(.largeTitle)
                    .bold()
                
                
                Text("Create Your Account")
                    .font(.largeTitle)
                    .bold()
                    .foregroundStyle(.blue)
                  
                
                VStack (spacing: 40) {
                    
                    CustomTextField(imageName: "envelope", placeHolder: "Email", isSecureField: false, text: $email)
                   
                    CustomTextField(imageName: "person", placeHolder: "password", isSecureField: true, text: $password)
                    
                    CustomTextField(imageName: "person", placeHolder: "UserName", isSecureField: false, text: $username)
                    
                    CustomTextField(imageName: "lock", placeHolder: "FullName", isSecureField: false, text: $fullname)
                    
                    
                 
                    
                }.padding([.top, .horizontal], 32)
                
             
                Button {
                    
                } label: {
                    Text("Sign Up")
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
                
                Button(action: {
                    mode.wrappedValue.dismiss()
                }, label: {
                    
                    HStack {
                        Spacer()
                        Text("Already have an Account?")
                        Text("Sign In")
                            .bold()
                        Spacer()
                    }
                    
                })

            }
            .padding(.leading)
            
        }
    }
}

#Preview {
    RegisterionView()
}
