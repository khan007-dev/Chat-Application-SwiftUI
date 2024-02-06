//
//  CustomInputView.swift
//  SwiftUI Chat Application
//
//  Created by Khan on 06.02.2024.
//

import SwiftUI

struct CustomInputView: View {
    @Binding  var text: String
    var action: () -> Void
    var body: some View {
        VStack {
            Rectangle()
                .foregroundStyle(Color(.separator))
                .frame(width: UIScreen.main.bounds.width, height: 0.75)
            HStack {
                TextField("Enter a Message", text: $text)
                    .textFieldStyle(PlainTextFieldStyle())
                    .font(.body)
                    .frame(minHeight: 30)
                
                Button(action: action, label: {
                    Text("Send")
                        .bold()
                        .foregroundStyle(.black)
                })

            }.padding(.bottom, 8)
                .padding(.horizontal)
        }
    }
}


