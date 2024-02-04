//
//  StatusSelectorView.swift
//  SwiftUI Chat Application
//
//  Created by Khan on 04.02.2024.
//

import SwiftUI

struct StatusSelectorView: View {
    var body: some View {
        
        ZStack {
            Color(.systemGroupedBackground)
                .ignoresSafeArea()
            
            ScrollView {
                VStack (alignment: .leading, spacing: 1) {
                    
                    Text("Currently Set to".uppercased())
                        .foregroundStyle(.gray)
                        .padding()
                  
                    StatusCell(viewModel: StatusViewModel(rawValue: 2)!)
                    
                    Text("select your status".uppercased())
                        .foregroundStyle(.gray)
                        .padding()
                    
                    ForEach(StatusViewModel.allCases.filter(({$0 != .notConfigured})), id:\.self) { viewmodel in
                        
                        Button(action: {
                            
                          
                        }, label: {
                            StatusCell(viewModel: viewmodel)
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
    let viewModel: StatusViewModel
    var body: some View {
        HStack {
            Text(viewModel.title)
                .foregroundStyle(.black)
            Spacer()
        }
        .frame(height: 56)
        .padding(.horizontal)
        .background(Color.white)
    }
}
