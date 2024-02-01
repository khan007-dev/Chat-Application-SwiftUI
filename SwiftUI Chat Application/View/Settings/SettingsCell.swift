//
//  SettingsCell.swift
//  SwiftUI Chat Application
//
//  Created by Khan on 01.02.2024.
//

import SwiftUI

struct SettingsCell: View {
    
    let viewModel: SettingsCellViewModel
    var body: some View {
    
        VStack {
            
            HStack {
                Image(systemName: viewModel.imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 15, height: 15)
                    .padding()
                    .background(viewModel.backgroundColor)
                    .foregroundColor(.white)
                    .cornerRadius(6)
                Text(viewModel.title)
                    .font(.system(size: 15))
                Spacer()
                
                Image(systemName: "chevron.right")
                    .foregroundColor(.gray)
                
            }.padding(.horizontal)
            
            Divider()
                .padding(.leading)
        }
        .background(.white)
    }
}

