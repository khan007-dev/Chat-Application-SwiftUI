//
//  StatusSelectorView.swift
//  SwiftUI Chat Application
//
//  Created by Khan on 04.02.2024.
//

import SwiftUI

struct StatusSelectorView: View {
    @ObservedObject var viewModel = StatusViewModel()

    var body: some View {
        
        ZStack {
            Color(.systemGroupedBackground)
                .ignoresSafeArea()
            
            ScrollView {
                VStack (alignment: .leading, spacing: 1) {
                    
                    Text("Currently Set to".uppercased())
                        .foregroundStyle(.gray)
                        .padding()
                  
                    StatusCell(status:viewModel.status)
                    
                    Text("select your status".uppercased())
                        .foregroundStyle(.gray)
                        .padding()
                    
                    ForEach(UserStatus.allCases.filter(({$0 != .notConfigured})), id:\.self) { status in
                        
                        Button(action: {
                            
                            viewModel.updateStaus(status)
                            
                          
                        }, label: {
                            StatusCell(status: status)
                        })
                    }
                    
                    
                }
            }
            
        }
    }
}

#Preview {
    StatusSelectorView()
}

struct StatusCell: View {
    let status: UserStatus
    var body: some View {
        HStack {
            Text(status.title)
                .foregroundStyle(.black)
            Spacer()
        }
        .frame(height: 56)
        .padding(.horizontal)
        .background(Color.white)
    }
}
