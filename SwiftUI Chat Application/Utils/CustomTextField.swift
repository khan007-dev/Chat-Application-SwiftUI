//
//  CustomTextField.swift
//  SwiftUI Chat Application
//
//  Created by Khan on 30.01.2024.
//

import SwiftUI


struct CustomTextField: View {
    let imageName: String
    let  placeHolder: String
    let isSecureField: Bool
    @Binding var text: String
    
    var body: some View {
        VStack (spacing: 16){
            HStack {
                Image(systemName: imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                    .foregroundStyle(Color(.darkGray))
                
                if isSecureField {
                    SecureField(placeHolder, text: $text)
                }
                else
                {
                    TextField(placeHolder , text: $text)
                }
        
            }
            Divider()
                .background(Color(.darkGray))
        }
    }
}



