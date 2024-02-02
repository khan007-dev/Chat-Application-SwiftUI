//
//  SettingsView.swift
//  SwiftUI Chat Application
//
//  Created by Khan on 01.02.2024.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        
        ZStack {
            Color(.systemGroupedBackground)
                .ignoresSafeArea()
            
            VStack (spacing: 32) {
              
                NavigationLink(destination: EditProfileView()) {
                    SettingsHeader()
                }

             
                VStack (spacing: 1) {
                    ForEach((SettingsCellViewModel.allCases), id: \.self) { viewModel in
                    
                        SettingsCell(viewModel: viewModel)
                    }
                }
              
              
                Button(action: {
                    
                }, label: {
                    Text("Log Out")
                        .foregroundStyle(.red)
                        .font(.system(size: 16, weight: .semibold))
                        .frame(width: UIScreen.main
                            .bounds.width, height: 50)
                        .background(.white)
                })
                
                Spacer()
            }
        }
       
    }
}

#Preview {
    SettingsView()
}


